scores := Score ScoreNT # ScoreCond
parts := Flute1 Flute2 Oboe Clarinet1 Clarinet2 Clarinet3 BassClarinet SopranoSax AltoSax1 AltoSax2 TenorSax BariSax \
         Trumpet1 Trumpet2 Trumpet3 Horn1 Horn2 Trombone1 Trombone2 Trombone3 Baritone Tuba \
         Percussion1 Percussion2 Mallets1 Mallets2
infra := allparts.lyi config.lyi layout.lyi outline.lyi single.lyi

scorepdfs := $(scores:%=%.pdf) ScoreMidi.midi
scoresrcs := $(scores:%=%.ly)
partprods := $(parts) BaritoneTC StringBass
partpdfs := $(partprods:%=%.pdf)
partincs := $(parts:%=parts/%.lyi)
partsrcs := $(partprods:%=%.ly)

all: scores parts

scores: $(scorepdfs)

parts: $(partpdfs)

clean:
	rm -f *~ parts/*~

pristine: clean
	rm -f $(partpdfs) $(scorepdfs)

Score.pdf: Score.ly $(partincs) $(infra)
	lilypond Score.ly

ScoreNT.pdf: ScoreNT.ly $(partincs) $(infra)
	lilypond ScoreNT.ly

ScoreCond.pdf: ScoreCond.ly $(partincs) $(infra)
	lilypond ScoreCond.ly

ScoreMidi.midi: ScoreMidi.ly $(partincs) $(infra)
	lilypond ScoreMidi.ly

Flute1.pdf: Flute1.ly parts/Flute1.lyi $(infra)
	lilypond Flute1.ly

Flute2.pdf: Flute2.ly parts/Flute2.lyi $(infra)
	lilypond Flute2.ly

Oboe.pdf: Oboe.ly parts/Oboe.lyi $(infra)
	lilypond Oboe.ly

Bassoon.pdf: Bassoon.ly parts/BassClarinet.lyi $(infra)
	lilypond Bassoon.ly

Clarinet1.pdf: Clarinet1.ly parts/Clarinet1.lyi $(infra)
	lilypond Clarinet1.ly

Clarinet2.pdf: Clarinet2.ly parts/Clarinet2.lyi $(infra)
	lilypond Clarinet2.ly

Clarinet3.pdf: Clarinet3.ly parts/Clarinet3.lyi $(infra)
	lilypond Clarinet3.ly

BassClarinet.pdf: BassClarinet.ly parts/BassClarinet.lyi $(infra)
	lilypond BassClarinet.ly

SopranoSax.pdf: SopranoSax.ly parts/SopranoSax.lyi $(infra)
	lilypond SopranoSax.ly

AltoSax1.pdf: AltoSax1.ly parts/AltoSax1.lyi $(infra)
	lilypond AltoSax1.ly

AltoSax2.pdf: AltoSax2.ly parts/AltoSax2.lyi $(infra)
	lilypond AltoSax2.ly

TenorSax.pdf: TenorSax.ly parts/TenorSax.lyi $(infra)
	lilypond TenorSax.ly

BariSax.pdf: BariSax.ly parts/BariSax.lyi $(infra)
	lilypond BariSax.ly

Trumpet1.pdf: Trumpet1.ly parts/Trumpet1.lyi $(infra)
	lilypond Trumpet1.ly

Trumpet2.pdf: Trumpet2.ly parts/Trumpet2.lyi $(infra)
	lilypond Trumpet2.ly

Trumpet3.pdf: Trumpet3.ly parts/Trumpet3.lyi $(infra)
	lilypond Trumpet3.ly

Horn1.pdf: Horn1.ly parts/Horn1.lyi $(infra)
	lilypond Horn1.ly

Horn2.pdf: Horn2.ly parts/Horn2.lyi $(infra)
	lilypond Horn2.ly

Trombone1.pdf: Trombone1.ly parts/Trombone1.lyi $(infra)
	lilypond Trombone1.ly

Trombone2.pdf: Trombone2.ly parts/Trombone2.lyi $(infra)
	lilypond Trombone2.ly

Trombone3.pdf: Trombone3.ly parts/Trombone3.lyi $(infra)
	lilypond Trombone3.ly

Baritone.pdf: Baritone.ly parts/Baritone.lyi $(infra)
	lilypond Baritone.ly

BaritoneTC.pdf: BaritoneTC.ly parts/Baritone.lyi $(infra)
	lilypond BaritoneTC.ly

StringBass.pdf: StringBass.ly parts/Tuba.lyi $(infra)
	lilypond StringBass.ly

Tuba.pdf: Tuba.ly parts/Tuba.lyi $(infra)
	lilypond Tuba.ly

Mallets1.pdf: Mallets1.ly parts/Mallets1.lyi $(infra)
	lilypond Mallets1.ly

Mallets2.pdf: Mallets2.ly parts/Mallets2.lyi $(infra)
	lilypond Mallets2.ly

Percussion1.pdf: Percussion1.ly parts/Percussion1.lyi $(infra)
	lilypond Percussion1.ly

Percussion2.pdf: Percussion2.ly parts/Percussion2.lyi $(infra)
	lilypond Percussion2.ly
