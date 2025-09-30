#!/usr/local/bin/python

import re
import subprocess
import sys

vrun = subprocess.run(['lilypond', '-v'], capture_output=True, encoding='utf-8')
ver_re = re.compile(r'LilyPond\s(?P<ver>[^\s]*)')
version = ver_re.search(vrun.stdout).group('ver')

songname = sys.argv[1]
open(songname + '.tly', 'wt').write(
    open('template.ly', 'rt').read().replace('@version@', version).replace('@filename@', songname))
