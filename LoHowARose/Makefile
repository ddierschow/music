scores := Score ScoreNT
parts := Flute1 Flute2 Oboe Clarinet1 Clarinet2 Clarinet3 BassClarinet AltoSax1 AltoSax2 TenorSax BariSax \
	Trumpet1 Trumpet2 Trumpet3 Horn1 Horn2 Trombone1 Trombone2 Trombone3 Baritone Tuba \
	Percussion1 Percussion2 MalletPercussion Timpani
infra := config.lyi layout.lyi outline.lyi ../common/defs.lyi

scorepdfs := $(scores:%=%.pdf) ScoreMidi.midi
scoresrcs := $(scores:%=%.ly)
partprods := $(parts) BaritoneTC Bassoon StringBass
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

Score.pdf: Score.ly $(infra) $(partincs) score.lyi allparts.lyi
	lilypond Score.ly

ScoreNT.pdf: ScoreNT.ly $(infra) $(partincs) score.lyi allparts.lyi
	lilypond ScoreNT.ly

ScoreMidi.midi: ScoreMidi.ly $(infra) $(partincs) score.lyi allparts.lyi
	lilypond ScoreMidi.ly

Flute1.pdf: Flute1.ly parts/Flute1.lyi $(infra) single.lyi
	lilypond Flute1.ly

Flute2.pdf: Flute2.ly parts/Flute2.lyi $(infra) single.lyi
	lilypond Flute2.ly

Oboe.pdf: Oboe.ly parts/Oboe.lyi $(infra) single.lyi
	lilypond Oboe.ly

Bassoon.pdf: Bassoon.ly parts/BassClarinet.lyi $(infra) single.lyi
	lilypond Bassoon.ly

Clarinet1.pdf: Clarinet1.ly parts/Clarinet1.lyi $(infra) single.lyi
	lilypond Clarinet1.ly

Clarinet2.pdf: Clarinet2.ly parts/Clarinet2.lyi $(infra) single.lyi
	lilypond Clarinet2.ly

Clarinet3.pdf: Clarinet3.ly parts/Clarinet3.lyi $(infra) single.lyi
	lilypond Clarinet3.ly

BassClarinet.pdf: BassClarinet.ly parts/BassClarinet.lyi $(infra) single.lyi
	lilypond BassClarinet.ly

AltoSax1.pdf: AltoSax1.ly parts/AltoSax1.lyi $(infra) single.lyi
	lilypond AltoSax1.ly

AltoSax2.pdf: AltoSax2.ly parts/AltoSax2.lyi $(infra) single.lyi
	lilypond AltoSax2.ly

TenorSax.pdf: TenorSax.ly parts/TenorSax.lyi $(infra) single.lyi
	lilypond TenorSax.ly

BariSax.pdf: BariSax.ly parts/BariSax.lyi $(infra) single.lyi
	lilypond BariSax.ly

Trumpet1.pdf: Trumpet1.ly parts/Trumpet1.lyi $(infra) single.lyi
	lilypond Trumpet1.ly

Trumpet2.pdf: Trumpet2.ly parts/Trumpet2.lyi $(infra) single.lyi
	lilypond Trumpet2.ly

Trumpet3.pdf: Trumpet3.ly parts/Trumpet3.lyi $(infra) single.lyi
	lilypond Trumpet3.ly

Horn1.pdf: Horn1.ly parts/Horn1.lyi $(infra) single.lyi
	lilypond Horn1.ly

Horn2.pdf: Horn2.ly parts/Horn2.lyi $(infra) single.lyi
	lilypond Horn2.ly

Trombone1.pdf: Trombone1.ly parts/Trombone1.lyi $(infra) single.lyi
	lilypond Trombone1.ly

Trombone2.pdf: Trombone2.ly parts/Trombone2.lyi $(infra) single.lyi
	lilypond Trombone2.ly

Trombone3.pdf: Trombone3.ly parts/Trombone3.lyi $(infra) single.lyi
	lilypond Trombone3.ly

Baritone.pdf: Baritone.ly parts/Baritone.lyi $(infra) single.lyi
	lilypond Baritone.ly

BaritoneTC.pdf: BaritoneTC.ly parts/Baritone.lyi $(infra) single.lyi
	lilypond BaritoneTC.ly

Tuba.pdf: Tuba.ly parts/Tuba.lyi $(infra) single.lyi
	lilypond Tuba.ly

StringBass.pdf: StringBass.ly parts/Tuba.lyi $(infra) single.lyi
	lilypond StringBass.ly

Percussion1.pdf: Percussion1.ly parts/Percussion1.lyi $(infra) single.lyi
	lilypond Percussion1.ly

Percussion2.pdf: Percussion2.ly parts/Percussion2.lyi $(infra) single.lyi
	lilypond Percussion2.ly

MalletPercussion.pdf: MalletPercussion.ly parts/MalletPercussion.lyi $(infra) single.lyi
	lilypond MalletPercussion.ly

Timpani.pdf: Timpani.ly parts/Timpani.lyi $(infra) single.lyi
	lilypond Timpani.ly
