scores := Score ScoreNT # ScoreCond
parts := Flute1 Flute2 Oboe Bassoon Clarinet1 Clarinet2 Clarinet3 BassClarinet SopranoSax AltoSax1 AltoSax2 TenorSax BariSax \
         Trumpet1 Trumpet2 Trumpet3 Horn1 Horn2 Trombone1 Trombone2 Trombone3 Baritone Tuba \
         Percussion1 Percussion2 MalletPercussion
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

Score.pdf: Score.ly $(infra) $(partincs)
	lilypond Score.ly

ScoreNT.pdf: ScoreNT.ly $(infra) $(partincs)
	lilypond ScoreNT.ly

ScoreCond.pdf: ScoreCond.ly $(infra) $(partincs)
	lilypond ScoreCond.ly

ScoreMidi.midi: $(infra) $(partincs)
	lilypond ScoreMidi.ly

Flute1.pdf: Flute1.ly Flute1.lyi $(infra)
	lilypond Flute1.ly

Flute2.pdf: Flute2.ly Flute2.lyi $(infra)
	lilypond Flute2.ly

Oboe.pdf: Oboe.ly Oboe.lyi $(infra)
	lilypond Oboe.ly

Bassoon.pdf: Bassoon.ly Bassoon.lyi $(infra)
	lilypond Bassoon.ly

Clarinet1.pdf: Clarinet1.ly Clarinet1.lyi $(infra)
	lilypond Clarinet1.ly

Clarinet2.pdf: Clarinet2.ly Clarinet2.lyi $(infra)
	lilypond Clarinet2.ly

Clarinet3.pdf: Clarinet3.ly Clarinet3.lyi $(infra)
	lilypond Clarinet3.ly

BassClarinet.pdf: BassClarinet.ly BassClarinet.lyi $(infra)
	lilypond BassClarinet.ly

SopranoSax.pdf: SopranoSax.ly SopranoSax.lyi $(infra)
	lilypond SopranoSax.ly

AltoSax1.pdf: AltoSax1.ly AltoSax1.lyi $(infra)
	lilypond AltoSax1.ly

AltoSax2.pdf: AltoSax2.ly AltoSax2.lyi $(infra)
	lilypond AltoSax2.ly

TenorSax.pdf: TenorSax.ly TenorSax.lyi $(infra)
	lilypond TenorSax.ly

BariSax.pdf: BariSax.ly BariSax.lyi $(infra)
	lilypond BariSax.ly

Trumpet1.pdf: Trumpet1.ly Trumpet1.lyi $(infra)
	lilypond Trumpet1.ly

Trumpet2.pdf: Trumpet2.ly Trumpet2.lyi $(infra)
	lilypond Trumpet2.ly

Trumpet3.pdf: Trumpet3.ly Trumpet3.lyi $(infra)
	lilypond Trumpet3.ly

Horn1.pdf: Horn1.ly Horn1.lyi $(infra)
	lilypond Horn1.ly

Horn2.pdf: Horn2.ly Horn2.lyi $(infra)
	lilypond Horn2.ly

Trombone1.pdf: Trombone1.ly Trombone1.lyi $(infra)
	lilypond Trombone1.ly

Trombone2.pdf: Trombone2.ly Trombone2.lyi $(infra)
	lilypond Trombone2.ly

Trombone3.pdf: Trombone3.ly Trombone3.lyi $(infra)
	lilypond Trombone3.ly

Baritone.pdf: Baritone.ly Baritone.lyi $(infra)
	lilypond Baritone.ly

BaritoneTC.pdf: BaritoneTC.ly Baritone.lyi $(infra)
	lilypond BaritoneTC.ly

Tuba.pdf: Tuba.ly Tuba.lyi $(infra)
	lilypond Tuba.ly

StringBass.pdf: StringBass.ly Tuba.lyi $(infra)
	lilypond StringBass.ly

Percussion1.pdf: Percussion1.ly Percussion1.lyi $(infra)
	lilypond Percussion1.ly

Percussion2.pdf: Percussion2.ly Percussion2.lyi $(infra)
	lilypond Percussion2.ly

MalletPercussion.pdf: MalletPercussion.ly MalletPercussion.lyi $(infra)
	lilypond MalletPercussion.ly
