'''
This is a fairly straightforward startup script to create a directory
and populate files for a new project.  IT IS NOT INTENDED TO BE CORRECT.
You will have to do a LOT of work on these files.  It's just designed to
give you a starting point quickly.

The most difficult line to write is the first one.  This handles that.
'''

import argparse

import data

dirname = 'start'

# todo: Makefile index.php


score_snippet = r'''          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = @formalname@
            \set Staff.shortInstrumentName = "@shortname@"
            \new Voice {\keepWithTag #'score \relative c \@part@@ckey@@text@Score }
          }
'''

scorent_snippet = r'''          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = @formalname@
            \set Staff.shortInstrumentName = "@shortname@"
            \new Voice {\keepWithTag #'score \@part@@text@Score }
          }
'''

scoremidi_snippet = r'''      \new Staff \with { midiInstrument = "@midi@" }
        { \new Voice { \relative c \@part@@text@Midi } }
'''

makefile_part_snippet = '''@filename@.pdf: $(infra) @filename@.ly @filename@.lyi
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

    if args.part:
        config = read_config(args.file)
        for part in args.part:
            render_part(config, config_instrument(part), part)

    else:
        start_from_scratch(args.file, args.version)


def config_instrument(arg):
    # comma-delimited should be coupled on score
    # equal-delimited should map to the same lyi file
    base_inst = None
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
            formalname = ' ' + nums['roman']
        if settings.get('key', '').endswith('es'):
            formalname = r'\markup { "' + formalname + ' in ' + key + r'" \smaller \flat }'
        elif settings.get('key', '').endswith('is'):
            formalname = r'\markup { "' + formalname + ' in ' + key + r' \smaller \sharp }'
        elif settings.get('key', '') not in ['c', '']:
            formalname = f'"{formalname} in {key}"'
        else:
            formalname = f'"{formalname}"'
        return([{
            'filename': inst,
            'formalname': formalname,
            'name': settings['name'],
            'shortname': settings['shortname'] + nums['num'],
            'part': settings['part'],
            'key': settings.get('key', 'c'),
            'ckey': settings.get('key', '').title(),
            'clef': settings['clef'],
            'octave': settings['octave'],
            'mclef': 'pc' if settings['clef'] == 'percussion' else 'bc' if settings['clef'] == 'bass' else 'tc',
            'midi': settings.get('midi', ''),
            'num': nums['num'],
            'text': nums['text'],
            'roman': nums['roman'],
            'textkey': data.keys.get(settings.get('key', ''), ''),
            'base': base_inst,
            'same_as': same_as,
        }])
        

def read_config(config_file):
    config = {
        'inst': [],
        'concertkey': 'c',
        'tempomark': '4 = 100',
        'time': '4/4',
        'key': 'c major',
        'ensemble': 'Ensemble',
    }
    for ln in open(config_file).readlines():
        cmd, arg = ln.strip().split('|', 1)
        if cmd == 'inst':
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
    render_file(inst, config, 'Part.ly', part + '.ly')
    render_file(inst, config, 'Part.lyi', part + '.lyi')


def start_from_scratch(config_file, version):
    config = read_config(config_file)

    render_file({}, config, 'ix.php', 'index.php', blob=
        ', '.join([f'''"{x['filename']}"''' for x in config['inst']]))
    open('allparts.lyi', 'wt').write(''.join([
        f'''\\include "{x['filename']}.lyi"\n''' for x in config['inst']]))
    render_file({}, config, 'config.lyi', 'config.lyi')
    render_file({}, config, 'layout.lyi', 'layout.lyi')
    render_file({}, config, 'outline.lyi', 'outline.lyi')
    render_file({}, config, 'part.lyi', 'part.lyi')
    render_file({}, config, 'Score.ly', 'Score.ly', make_score_blob(config, score_snippet))
    render_file({}, config, 'ScoreNT.ly', 'ScoreNT.ly', make_score_blob(config, scorent_snippet))
    render_file({}, config, 'ScoreMidi.ly', 'ScoreMidi.ly', make_score_blob(config, scoremidi_snippet))
    for inst in config['inst']:
        render_part(inst, config, inst['filename'])
    render_makefile(config, 'Makefile', 'Makefile')


if __name__ == '__main__':
    main()
