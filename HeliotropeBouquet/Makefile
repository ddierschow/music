all: scores parts

scores: Score.pdf ScoreNT.pdf ScoreMidi.midi

parts: Flute1.pdf Flute2.pdf Oboe.pdf Bassoon.pdf Clarinet1.pdf Clarinet2.pdf Clarinet3.pdf BassClarinet.pdf SopranoSax.pdf AltoSax1.pdf AltoSax2.pdf TenorSax.pdf BariSax.pdf Trumpet1.pdf Trumpet2.pdf Trumpet3.pdf Horn1.pdf Horn2.pdf Trombone1.pdf Trombone2.pdf Trombone3.pdf Baritone.pdf BaritoneTC.pdf StringBass.pdf Tuba.pdf MalletPercussion1.pdf MalletPercussion2.pdf Percussion1.pdf Percussion2.pdf

clean:
	rm -f Flute1.pdf Flute2.pdf Oboe.pdf Bassoon.pdf Clarinet1.pdf Clarinet2.pdf Clarinet3.pdf BassClarinet.pdf SopranoSax.pdf AltoSax1.pdf AltoSax2.pdf TenorSax.pdf BariSax.pdf Trumpet1.pdf Trumpet2.pdf Trumpet3.pdf Horn1.pdf Horn2.pdf Trombone1.pdf Trombone2.pdf Trombone3.pdf Baritone.pdf BaritoneTC.pdf StringBass.pdf Tuba.pdf MalletPercussion1.pdf MalletPercussion2.pdf Percussion1.pdf Percussion2.pdf *~ Score.pdf ScoreCond.pdf ScoreNT.pdf ScoreMidi.midi

Score.pdf: config.lyi ../common/defs.lyi outline.lyi layout.lyi Score.ly Flute1.lyi Flute2.lyi Oboe.lyi Bassoon.lyi Clarinet1.lyi Clarinet2.lyi Clarinet3.lyi BassClarinet.lyi SopranoSax.lyi AltoSax1.lyi AltoSax2.lyi TenorSax.lyi BariSax.lyi Trumpet1.lyi Trumpet2.lyi Trumpet3.lyi Horn1.lyi Horn2.lyi Trombone1.lyi Trombone2.lyi Trombone3.lyi Baritone.lyi Tuba.lyi MalletPercussion1.lyi MalletPercussion2.lyi Percussion1.lyi Percussion2.lyi
	lilypond Score.ly

#ScoreCond.pdf: config.lyi ../common/defs.lyi outline.lyi layout.lyi ScoreNT.ly Flute1.lyi Flute2.lyi Oboe.lyi Bassoon.lyi Clarinet1.lyi Clarinet2.lyi Clarinet3.lyi BassClarinet.lyi SopranoSax.lyi AltoSax1.lyi AltoSax2.lyi TenorSax.lyi BariSax.lyi Trumpet1.lyi Trumpet2.lyi Trumpet3.lyi Horn1.lyi Horn2.lyi Trombone1.lyi Trombone2.lyi Trombone3.lyi Baritone.lyi Tuba.lyi MalletPercussion1.lyi MalletPercussion2.lyi Percussion1.lyi Percussion2.lyi
#	lilypond ScoreCond.ly

ScoreNT.pdf: config.lyi ../common/defs.lyi outline.lyi layout.lyi ScoreNT.ly Flute1.lyi Flute2.lyi Oboe.lyi Bassoon.lyi Clarinet1.lyi Clarinet2.lyi Clarinet3.lyi BassClarinet.lyi SopranoSax.lyi AltoSax1.lyi AltoSax2.lyi TenorSax.lyi BariSax.lyi Trumpet1.lyi Trumpet2.lyi Trumpet3.lyi Horn1.lyi Horn2.lyi Trombone1.lyi Trombone2.lyi Trombone3.lyi Baritone.lyi Tuba.lyi MalletPercussion1.lyi MalletPercussion2.lyi Percussion1.lyi Percussion2.lyi
	lilypond ScoreNT.ly

ScoreMidi.midi: config.lyi ../common/defs.lyi outline.lyi ScoreMidi.ly Flute1.lyi Flute2.lyi Oboe.lyi Bassoon.lyi Clarinet1.lyi Clarinet2.lyi Clarinet3.lyi BassClarinet.lyi SopranoSax.lyi AltoSax1.lyi AltoSax2.lyi TenorSax.lyi BariSax.lyi Trumpet1.lyi Trumpet2.lyi Trumpet3.lyi Horn1.lyi Horn2.lyi Trombone1.lyi Trombone2.lyi Trombone3.lyi Baritone.lyi Tuba.lyi MalletPercussion1.lyi MalletPercussion2.lyi Percussion1.lyi Percussion2.lyi
	lilypond ScoreMidi.ly

Flute1.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Flute1.ly Flute1.lyi
	lilypond Flute1.ly

Flute2.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Flute2.ly Flute2.lyi
	lilypond Flute2.ly

Oboe.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Oboe.ly Oboe.lyi
	lilypond Oboe.ly

Bassoon.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Bassoon.ly Bassoon.lyi BassClarinet.lyi
	lilypond Bassoon.ly

Clarinet1.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Clarinet1.ly Clarinet1.lyi
	lilypond Clarinet1.ly

Clarinet2.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Clarinet2.ly Clarinet2.lyi
	lilypond Clarinet2.ly

Clarinet3.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Clarinet3.ly Clarinet3.lyi
	lilypond Clarinet3.ly

BassClarinet.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi BassClarinet.ly BassClarinet.lyi
	lilypond BassClarinet.ly

SopranoSax.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi SopranoSax.ly SopranoSax.lyi
	lilypond SopranoSax.ly

AltoSax1.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi AltoSax1.ly AltoSax1.lyi
	lilypond AltoSax1.ly

AltoSax2.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi AltoSax2.ly AltoSax2.lyi
	lilypond AltoSax2.ly

TenorSax.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi TenorSax.ly TenorSax.lyi
	lilypond TenorSax.ly

BariSax.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi BariSax.ly BariSax.lyi
	lilypond BariSax.ly

Trumpet1.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Trumpet1.ly Trumpet1.lyi
	lilypond Trumpet1.ly

Trumpet2.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Trumpet2.ly Trumpet2.lyi
	lilypond Trumpet2.ly

Trumpet3.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Trumpet3.ly Trumpet3.lyi
	lilypond Trumpet3.ly

Horn1.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Horn1.ly Horn1.lyi
	lilypond Horn1.ly

Horn2.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Horn2.ly Horn2.lyi
	lilypond Horn2.ly

Trombone1.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Trombone1.ly Trombone1.lyi
	lilypond Trombone1.ly

Trombone2.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Trombone2.ly Trombone2.lyi
	lilypond Trombone2.ly

Trombone3.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Trombone3.ly Trombone3.lyi
	lilypond Trombone3.ly

Baritone.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Baritone.ly Baritone.lyi
	lilypond Baritone.ly

BaritoneTC.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi BaritoneTC.ly Baritone.lyi
	lilypond BaritoneTC.ly

StringBass.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi StringBass.ly Tuba.lyi
	lilypond StringBass.ly

Tuba.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Tuba.ly Tuba.lyi
	lilypond Tuba.ly

MalletPercussion1.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi MalletPercussion1.ly MalletPercussion1.lyi
	lilypond MalletPercussion1.ly

MalletPercussion2.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi MalletPercussion2.ly MalletPercussion2.lyi
	lilypond MalletPercussion2.ly

Percussion1.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Percussion1.ly Percussion1.lyi
	lilypond Percussion1.ly

Percussion2.pdf: config.lyi ../common/defs.lyi outline.lyi part.lyi layout.lyi Percussion2.ly Percussion2.lyi
	lilypond Percussion2.ly
