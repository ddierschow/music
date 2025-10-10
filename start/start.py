'''
This is a fairly straightforward startup script to create a directory
and populate files for a new project.  IT IS NOT INTENDED TO BE CORRECT.
You will have to do a LOT of work on these files.  It's just designed to
give you a starting point quickly.

The most difficult line to write is the first one.  This handles that.
'''

# add partcombine support and doublestaffs

import argparse
import datetime
import os
import shutil

import data

dirname = 'start'

score_double_snippet = r'''          \doubleStaffTempo
            #(markup "Flute 1, 2") #(markup #:column ("Fl." #:line ("1, 2"))) #"1." #"2." \flCOneScore \flCTwoScore
'''  # not yet in use

score_snippet = r'''          \singleStaff @formalname@ "@shortname@" \@part_t_score@
'''

scorent_snippet = r'''          \singleStaff @formalname@ "@shortname@" \@part_nt_score@
'''

scoremidi_snippet = r'''      \midiStaff "@midi@" << \@part_nt_score@ >>
'''

scoremididrums_snippet = r'''      \midiDrumStaff << \@part_nt_score@ >>
'''

makefile_part_snippet = '''@filename@.pdf: @filename@.ly parts/@filename@.lyi $(infra) single.lyi
\tlilypond @filename@.ly

'''


def command_line_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('-v', dest='version', default='2.24.1',
                        help='Version')
    parser.add_argument('-f', dest='file',
                        help='Configuration file')
    parser.add_argument('-p', dest='part', action='append',
                        help='Individual part')
    return parser.parse_args()


def main():
    args = command_line_args()

    if args.part:  # not really actively supporting this right now
        config = read_config(args.file)
        for part in args.part:
            render_part(config, config_instrument(part), part)

    else:
        start_from_scratch(args.file, args.version)


def config_instrument(arg):
    # comma-delimited should be coupled on score
    # equal-delimited should map to the same lyi file
    base_inst = None
    retval = []
    for inst in arg.split(','):
        same_as = None
        if '=' in inst:
            inst, same_as = inst.split('=')
        base_inst = base_inst or inst
        inst_name, num = (inst[:-1], int(inst[-1])) if inst[-1].isdigit() else (inst, 0)
        settings = data.instruments[inst_name]
        # 'name' 'shortname' 'part' 'key' 'clef' 'midi'
        nums = data.numbers[num]
        # 'num' 'text' 'roman'
        formalname = settings['name']
        key = settings['key'][0].upper()
        if num:
            formalname += ' ' + nums['roman']
        if settings.get('key', '').endswith('es'):
            formalname += ' in ' + key + r'" \smaller \flat'
        elif settings.get('key', '').endswith('is'):
            formalname += ' in ' + key + r'" \smaller \sharp'
        elif settings.get('key', '') not in ['c', '']:
            formalname += f' in {key}"'
        else:
            formalname += '"'
        formalname = r'\markup { "' + formalname + ' }'
        ckey = settings.get('key', '').title()
        part_nt = settings['part'] + nums['text']
        part_t = settings['part'] + ckey + nums['text']
        transp_nt = r' \transpose c \concertKey \relative c' + settings['octave']
        transp_t = r' \transpose ' + settings.get('key', 'c') + r' \concertKey \relative c' + settings['octave']
        if settings['part'] == 'perc':
            part_t = part_nt
            transp_nt = ''
            transp_t = ''
        retval.append({
            'filename': inst,
            'formalname': formalname,
            'name': settings['name'],
            'shortname': settings['shortname'] + nums['num'],
            'part': settings['part'],
            'key': settings.get('key', 'c'),
            'ckey': ckey,
            'clef': '' if settings['clef'] == 'percussion' else settings['clef'],
            'octave': settings['octave'],
            'mclef': 'pc' if settings['clef'] == 'percussion' else 'bc' if settings['clef'] == 'bass' else 'tc',
            'midi': settings.get('midi', ''),
            'num': nums['num'],
            'text': nums['text'],
            'roman': nums['roman'],
            'textkey': data.keys.get(settings.get('key', ''), ''),
            'base': base_inst,
            'same_as': same_as,
            'part_nt_score': part_nt + 'Score',
            'part_nt_cond': part_nt + 'Cond',
            'part_t_score': part_t + 'Score',
            'part_t_part': part_t + 'Part',
            'transp_nt': transp_nt,
            'transp_t': transp_t,
        })
    return retval


def read_config(config_file):
    config = {
        'year': str(datetime.date.today().year),
        'inst': [],
        'concertkey': 'c',
        'tempomark': '4 = 100',
        'time': '4/4',
        'key': 'c major',
        'ensemble': 'Ensemble',
    }
    for ln in open(config_file).readlines():
        cmd, arg = ln.strip().split('|', 1)
        if cmd == 'instruments':
            for inst in open(f'../start/{arg}.inst'):
                config['inst'].extend(config_instrument(inst.strip()))
        elif cmd == 'instrument':
            config['inst'].extend(config_instrument(arg))
        else:
            config[cmd] = arg
    return config


def render_dict(image, info):
    for k, v in info.items():
        if isinstance(v, str):
            image = image.replace('@' + k + '@', v)
    return image


def render_file(inst, config, infilename, outfilename, blob=''):
    print('render', infilename, outfilename)
    image = open('../' + dirname + '/' + infilename).read()
    image = image.replace('@blob@', blob)
    image = render_dict(image, inst)
    image = render_dict(image, config)
    open(outfilename, 'wt').write(image)


def make_score_blob(config, snippet):
    return ''.join([render_dict(snippet, x) for x in config['inst']])


def render_makefile(config, infilename, outfilename):
    print('render', infilename, outfilename)
    image = open('../' + dirname + '/' + infilename).read()
    image = render_dict(image, config)
    partspdf = ' '.join([f"{x['filename']}.pdf" for x in config['inst']])
    partslyi = ' '.join([f"{x['filename']}.lyi" for x in config['inst']])
    partlist = ' '.join([x['filename'] for x in config['inst']])
    blob = ''.join([render_dict(makefile_part_snippet, x) for x in config['inst']])
    image = render_dict(image, {'partspdf': partspdf, 'partslyi': partslyi, 'partlist': partlist, 'blob': blob})
    open(outfilename, 'wt').write(image)


def render_part(inst, config, part):
    render_file(inst, config, 'Part.ly.temp', f'{part}.ly')
    render_file(inst, config, 'Part.lyi.temp', f'parts/{part}.lyi')


def start_from_scratch(config_file, version):
    if os.path.exists('config.lyi'):
        print("directory is not clean!")
        return
    config = read_config(config_file)

    render_file({}, config, 'index.php.temp', 'index.php',
                blob=', '.join([f'''"{x['filename']}"''' for x in config['inst']]))
    open('allparts.lyi', 'wt').write(''.join([
        f'''\\include "parts/{x['filename']}.lyi"\n''' for x in config['inst']]))
    render_file({}, config, 'config.lyi.temp', 'config.lyi')
    render_file({}, config, 'layout.lyi.temp', 'layout.lyi')
    render_file({}, config, 'outline.lyi.temp', 'outline.lyi')
    render_file({}, config, 'score.lyi.temp', 'score.lyi')
    render_file({}, config, 'single.lyi.temp', 'single.lyi')
    render_file({}, config, 'Score.ly.temp', 'Score.ly', make_score_blob(config, score_snippet))
    render_file({}, config, 'ScoreNT.ly.temp', 'ScoreNT.ly', make_score_blob(config, scorent_snippet))
    render_file({}, config, 'ScoreMidi.ly.temp', 'ScoreMidi.ly', make_score_blob(config, scoremidi_snippet))
    render_file({}, config, 'description.txt.temp', 'description.txt')
    os.makedirs('parts', exist_ok=True)
    for inst in config['inst']:
        render_part(inst, config, inst['filename'])
    render_makefile(config, 'Makefile.temp', 'Makefile')
    print('cp', '../image.png', 'image.png')
    shutil.copyfile('../image.png', 'image.png')


if __name__ == '__main__':
    main()
