# Heliotrope Bouquet

Written in 1855 by Georges Bizet.  Arranged for concert band from the original
orchestral score.

## Parts

- Flute 1 and 2
- Oboe
- Bassoon
- Clarinet 1, 2, and 3
- Bass Clarinet
- Alto Sax 1 and 2
- Tenor Sax
- Bari Sax
- Trumpet 1, 2, and 3
- Horn 1 and 2
- Trombone 1, 2, and 3
- Baritone (bass clef and treble clef)
- Tuba
- String Bass
- Percussion 1, 2, Mallet, and Timpani

The source for all parts is written in the same key to allow for easily switching passages
to different instruments.  The transposition is done at the bottom of each file.  This is
arranged from a piano source, so the Notes sections are all written in Gmajor/Cmajor.

Each part has sequences for Notes, Dynamics, and Cues or NotCues, and these are put together at the same
point the transposition is done, to produce a mixed seqence for the part and another for the score.
In some cases, markups have been moved from Notes to Cues to avoid problems with combining parts for the score.

The files with ly extension are rendered into pdf files.  Each part includes ../common/defs.lyi,
which is my library of useful things, not all of which will be used.  Then each part includes its
own lyi file, which has the four sequences named above.  Finally each part includes part.lyi,
which includes outline.lyi, then lays things out on the page.

## Scores

The Score.ly file includes all the part lyi files, then lays out the full score.

There is also a ScoreNT.ly file to combine all the parts without transposing them.  This is just
for me to help understand how things fit together.

The ScoreMidi.ly file is there just to create the midi file, as the voltas have to be unfolded
to make it come out right.

TODO: Condensed score.

Uses https://github.com/kastdeur/lilydrum
