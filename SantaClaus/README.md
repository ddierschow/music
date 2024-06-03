# Santa Claus is Comin' to Town


## Parts

- Flute 1 and 2
- Oboe
- Bassoon
- Clarinet 1, 2, and 3
- Bass Clarinet
- Soprano Sax
- Alto Sax 1 and 2
- Tenor Sax
- Bari Sax
- Trumpet 1, 2, and 3
- Horn 1 and 2
- Trombone 1, 2, and 3
- Baritone (bass clef and treble clef)
- Tuba
- String Bass
- Percussion 1, 2, and Mallet

The source for all parts is written in the same key to allow for easily switching passages
to different instruments.  The transposition is done at the bottom of each file.

Each part has sequences for Notes, Dynamics, and Cues or NotCues, and Marks; and these are put together at the same
point the transposition is done, to produce a mixed seqence for the part and another for the score.
In some cases, markups might be moved from Notes to Cues to avoid problems with combining parts for the score.
Marks are only for markups going to the condensed score, so are not currently in use.

The files with ly extension are rendered into pdf files.  Each part includes ../common/defs.lyi,
which is my library of useful things, not all of which will be used.  Then each part includes its
own lyi file, which has the sequences named above.  Finally each part includes part.lyi,
which includes outline.lyi, then lays things out on the page.

## Scores

The Score.ly file includes all the part lyi files, then lays out the full score.

There is also a ScoreNT.ly file to combine all the parts without transposing them.  This is just
for me to help understand how things fit together.

The ScoreMidi.ly file is there just to create the midi file, as the voltas have to be unfolded
to make it come out right.  The midi file plays at about 4:11 but once a real band plays it
with proper tempo changes, it should play at about 3:45.

TODO: Condensed score.  ScoreCond.ly is an early attempt but there is still far to go.

Uses https://github.com/kastdeur/lilydrum

## Status

Notes: 33 and 67 are essentially the same; 43 and 77 are also; as are 1 and 87.
```
                |  1|  9| 21| 33| 43| 55| 67| 77| 87| 95|103|111|119|
Flute1          |   | x |   | x |   |   | x |   | x |   |   | x | x |
Flute2          |   | x |   | x |   |   | x |   | x |   |   | x | x |
Oboe            |   | x |   | x |   |   | x |   | x |   |   | x | x |
Bassoon         |   | x |   | x |   |   | x |   | x |   |   | x | x |
Clarinet1       | x | x |   | x |   |   | x |   | x | x | x | x |   |
Clarinet2       | x | x |   | x |   |   | x |   | x | x | x | x |   |
Clarinet3       | x | x |   | x |   |   | x |   | x | x | x | x |   |
BassClarinet    | x | x |   | x |   |   | x |   | x | x | x | x |   |
SopranoSax      |   |   |   | x |   | x | x |   |   | x | x | x |   |
AltoSax1        |   |   |   | x |   | x | x |   |   | x | x | x |   |
AltoSax2        |   |   |   | x |   | x | x |   |   | x | x | x |   |
TenorSax        |   |   |   | x |   | x | x |   |   | x | x | x |   |
BariSax         |   |   |   | x |   | x | x |   |   | x | x | x |   |
                |  1|  9| 21| 33| 43| 55| 67| 77| 87| 95|103|111|119|
Trumpet1        |   | x | x |   | x |   |   | x |   |   | x | x |   |
Trumpet2        |   |   | x |   | x |   |   | x |   |   | x | x |   |
Trumpet3        |   |   | x |   | x |   |   | x |   |   |   | x |   |
Horn1           |   |   |   | x | x |   | x | x |   |   | x | x | x |
Horn2           |   |   |   | x | x |   | x | x |   |   | x | x | x |
Trombone1       |   |   |   | x | x |   | x | x |   |   | x | x |   |
Trombone2       |   |   |   | x | x |   | x | x |   |   | x | x |   |
Trombone3       |   |   |   | x | x |   | x | x |   |   | x | x |   |
Baritone        |   |   |   |   | x |   |   | x |   |   | x | x |   |
Tuba            |   |   | x | x | x |   | x | x |   |   | x | x | x |
                |  1|  9| 21| 33| 43| 55| 67| 77| 87| 95|103|111|119|
Percussion1     |   |   | x | x | x | x | x | x |   | x | x | x |   |
Percussion2     | x | x |   |   |   |   |   |   | x |   |   |   |   |
MalletPerc      | x | x |   | x |   |   | x |   | x | x | x | x | x |
```
