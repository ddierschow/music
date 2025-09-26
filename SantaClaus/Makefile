scores := Score # ScoreNT # ScoreCond
parts := Flute1 Flute2 Oboe Bassoon Clarinet1 Clarinet2 Clarinet3 BassClarinet SopranoSax AltoSax1 AltoSax2 TenorSax BariSax \
         Trumpet1 Trumpet2 Trumpet3 Horn1 Horn2 Trombone1 Trombone2 Trombone3 Baritone Tuba StringBass \
         Percussion1 Percussion2 Mallets Timpani
infra := config.lyi layout.lyi outline.lyi ../common/defs.lyi

scorepdfs := $(scores:%=%.pdf) ScoreMidi.midi
scoresrcs := $(scores:%=%.ly)
scoreinfra := $(infra) score.lyi allparts.lyi
partprods := $(parts) BaritoneTC
partpdfs := $(partprods:%=%.pdf)
partincs := $(parts:%=parts/%.lyi)
partsrcs := $(partprods:%=%.ly)
partinfra := $(infra) single.lyi

all: scores parts

scores: $(scorepdfs)

parts: $(partpdfs)

clean:
	rm -f *~ parts/*~

pristine: clean
	rm -f $(partpdfs) $(scorepdfs)

Score.pdf: Score.ly $(partincs) $(scoreinfra)
	lilypond Score.ly

ScoreNT.pdf: ScoreNT.ly $(partincs) $(scoreinfra)
	lilypond ScoreNT.ly

ScoreCond.pdf: ScoreCond.ly $(partincs) $(scoreinfra)
	lilypond ScoreCond.ly

ScoreMidi.midi: ScoreMidi.ly $(partincs) $(scoreinfra)
	lilypond ScoreMidi.ly

Flute1.pdf: Flute1.ly parts/Flute1.lyi $(partinfra)
	lilypond Flute1.ly

Flute2.pdf: Flute2.ly parts/Flute2.lyi $(partinfra)
	lilypond Flute2.ly

Oboe.pdf: Oboe.ly parts/Oboe.lyi $(partinfra)
	lilypond Oboe.ly

Bassoon.pdf: Bassoon.ly parts/Bassoon.lyi $(partinfra)
	lilypond Bassoon.ly

Clarinet1.pdf: Clarinet1.ly parts/Clarinet1.lyi $(partinfra)
	lilypond Clarinet1.ly

Clarinet2.pdf: Clarinet2.ly parts/Clarinet2.lyi $(partinfra)
	lilypond Clarinet2.ly

Clarinet3.pdf: Clarinet3.ly parts/Clarinet3.lyi $(partinfra)
	lilypond Clarinet3.ly

BassClarinet.pdf: BassClarinet.ly parts/BassClarinet.lyi $(partinfra)
	lilypond BassClarinet.ly

SopranoSax.pdf: SopranoSax.ly parts/SopranoSax.lyi $(partinfra)
	lilypond SopranoSax.ly

AltoSax1.pdf: AltoSax1.ly parts/AltoSax1.lyi $(partinfra)
	lilypond AltoSax1.ly

AltoSax2.pdf: AltoSax2.ly parts/AltoSax2.lyi $(partinfra)
	lilypond AltoSax2.ly

TenorSax.pdf: TenorSax.ly parts/TenorSax.lyi $(partinfra)
	lilypond TenorSax.ly

BariSax.pdf: BariSax.ly parts/BariSax.lyi $(partinfra)
	lilypond BariSax.ly

Trumpet1.pdf: Trumpet1.ly parts/Trumpet1.lyi $(partinfra)
	lilypond Trumpet1.ly

Trumpet2.pdf: Trumpet2.ly parts/Trumpet2.lyi $(partinfra)
	lilypond Trumpet2.ly

Trumpet3.pdf: Trumpet3.ly parts/Trumpet3.lyi $(partinfra)
	lilypond Trumpet3.ly

Horn1.pdf: Horn1.ly parts/Horn1.lyi $(partinfra)
	lilypond Horn1.ly

Horn2.pdf: Horn2.ly parts/Horn2.lyi $(partinfra)
	lilypond Horn2.ly

Trombone1.pdf: Trombone1.ly parts/Trombone1.lyi $(partinfra)
	lilypond Trombone1.ly

Trombone2.pdf: Trombone2.ly parts/Trombone2.lyi $(partinfra)
	lilypond Trombone2.ly

Trombone3.pdf: Trombone3.ly parts/Trombone3.lyi $(partinfra)
	lilypond Trombone3.ly

Baritone.pdf: Baritone.ly parts/Baritone.lyi $(partinfra)
	lilypond Baritone.ly

BaritoneTC.pdf: BaritoneTC.ly parts/Baritone.lyi $(partinfra)
	lilypond BaritoneTC.ly

Tuba.pdf: Tuba.ly parts/Tuba.lyi $(partinfra)
	lilypond Tuba.ly

StringBass.pdf: StringBass.ly parts/StringBass.lyi $(partinfra)
	lilypond StringBass.ly

Percussion1.pdf: Percussion1.ly parts/Percussion1.lyi $(partinfra)
	lilypond Percussion1.ly

Percussion2.pdf: Percussion2.ly parts/Percussion2.lyi $(partinfra)
	lilypond Percussion2.ly

Mallets.pdf: Mallets.ly parts/Mallets.lyi $(partinfra)
	lilypond Mallets.ly

Timpani.pdf: Timpani.ly parts/Timpani.lyi $(partinfra)
	lilypond Timpani.ly
