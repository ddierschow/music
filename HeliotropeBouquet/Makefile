scores := Score ScoreNT # ScoreCond
parts := Flute1 Flute2 Oboe Bassoon Clarinet1 Clarinet2 Clarinet3 BassClarinet SopranoSax AltoSax1 AltoSax2 TenorSax BariSax \
Trumpet1 Trumpet2 Trumpet3 Horn1 Horn2 Trombone1 Trombone2 Trombone3 Baritone Tuba \
Percussion1 Percussion2 MalletPercussion1 MalletPercussion2
infra := allparts.lyi config.lyi layout.lyi outline.lyi part.lyi

scorepdfs := $(scores:%=%.pdf) ScoreMidi.midi
scoresrcs := $(scores:%=%.ly)
partprods := $(parts) BaritoneTC StringBass
partpdfs := $(partprods:%=%.pdf)
partincs := $(parts:%=%.lyi)
partsrcs := $(partprods:%=%.ly)

all: scores parts

scores: $(scorepdfs)

parts: $(partpdfs)

clean:
	rm -f $(partpdfs) $(scorepdfs) *~

Score.pdf: $(infra) Score.ly $(partincs)
	lilypond Score.ly

ScoreNT.pdf: $(infra) ScoreNT.ly $(partincs)
	lilypond ScoreNT.ly

ScoreCond.pdf: $(infra) ScoreCond.ly $(partincs)
	lilypond ScoreCond.ly

ScoreMidi.midi: $(infra) $(partincs)
	lilypond ScoreMidi.ly

Flute1.pdf: $(infra) Flute1.ly Flute1.lyi
	lilypond Flute1.ly

Flute2.pdf: $(infra) Flute2.ly Flute2.lyi
	lilypond Flute2.ly

Oboe.pdf: $(infra) Oboe.ly Oboe.lyi
	lilypond Oboe.ly

Bassoon.pdf: $(infra) Bassoon.ly Bassoon.lyi BassClarinet.lyi
	lilypond Bassoon.ly

Clarinet1.pdf: $(infra) Clarinet1.ly Clarinet1.lyi
	lilypond Clarinet1.ly

Clarinet2.pdf: $(infra) Clarinet2.ly Clarinet2.lyi
	lilypond Clarinet2.ly

Clarinet3.pdf: $(infra) Clarinet3.ly Clarinet3.lyi
	lilypond Clarinet3.ly

BassClarinet.pdf: $(infra) BassClarinet.ly BassClarinet.lyi
	lilypond BassClarinet.ly

SopranoSax.pdf: $(infra) SopranoSax.ly SopranoSax.lyi
	lilypond SopranoSax.ly

AltoSax1.pdf: $(infra) AltoSax1.ly AltoSax1.lyi
	lilypond AltoSax1.ly

AltoSax2.pdf: $(infra) AltoSax2.ly AltoSax2.lyi
	lilypond AltoSax2.ly

TenorSax.pdf: $(infra) TenorSax.ly TenorSax.lyi
	lilypond TenorSax.ly

BariSax.pdf: $(infra) BariSax.ly BariSax.lyi
	lilypond BariSax.ly

Trumpet1.pdf: $(infra) Trumpet1.ly Trumpet1.lyi
	lilypond Trumpet1.ly

Trumpet2.pdf: $(infra) Trumpet2.ly Trumpet2.lyi
	lilypond Trumpet2.ly

Trumpet3.pdf: $(infra) Trumpet3.ly Trumpet3.lyi
	lilypond Trumpet3.ly

Horn1.pdf: $(infra) Horn1.ly Horn1.lyi
	lilypond Horn1.ly

Horn2.pdf: $(infra) Horn2.ly Horn2.lyi
	lilypond Horn2.ly

Trombone1.pdf: $(infra) Trombone1.ly Trombone1.lyi
	lilypond Trombone1.ly

Trombone2.pdf: $(infra) Trombone2.ly Trombone2.lyi
	lilypond Trombone2.ly

Trombone3.pdf: $(infra) Trombone3.ly Trombone3.lyi
	lilypond Trombone3.ly

Baritone.pdf: $(infra) Baritone.ly Baritone.lyi
	lilypond Baritone.ly

BaritoneTC.pdf: $(infra) BaritoneTC.ly Baritone.lyi
	lilypond BaritoneTC.ly

StringBass.pdf: $(infra) StringBass.ly Tuba.lyi
	lilypond StringBass.ly

Tuba.pdf: $(infra) Tuba.ly Tuba.lyi
	lilypond Tuba.ly

MalletPercussion1.pdf: $(infra) MalletPercussion1.ly MalletPercussion1.lyi
	lilypond MalletPercussion1.ly

MalletPercussion2.pdf: $(infra) MalletPercussion2.ly MalletPercussion2.lyi
	lilypond MalletPercussion2.ly

Percussion1.pdf: $(infra) Percussion1.ly Percussion1.lyi
	lilypond Percussion1.ly

Percussion2.pdf: $(infra) Percussion2.ly Percussion2.lyi
	lilypond Percussion2.ly
