scores := Score ScoreNT
parts := Flute1 Flute2 Oboe Bassoon Clarinet1 Clarinet2 Clarinet3 BassClarinet AltoSax1 AltoSax2 TenorSax BariSax \
	Trumpet1 Trumpet2 Trumpet3 Horn1 Horn2 Trombone1 Trombone2 Trombone3 Baritone Tuba \
	Percussion1 Percussion2 MalletPercussion Timpani
infra := allparts.lyi config.lyi layout.lyi outline.lyi single.lyi ../common/defs.lyi

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
	rm -f $(partpdfs) $(scorepdfs) *~

Score.pdf: Score.ly $(infra) $(partincs)
	lilypond Score.ly

ScoreNT.pdf: ScoreNT.ly $(infra) $(partincs)
	lilypond ScoreNT.ly

ScoreMidi.midi: ScoreMidi.ly $(infra) $(partincs)
	lilypond ScoreMidi.ly

Flute1.pdf: $(infra) Flute1.ly parts/Flute1.lyi
	lilypond Flute1.ly

Flute2.pdf: $(infra) Flute2.ly parts/Flute2.lyi
	lilypond Flute2.ly

Oboe.pdf: $(infra) Oboe.ly parts/Oboe.lyi
	lilypond Oboe.ly

Bassoon.pdf: $(infra) Bassoon.ly parts/Bassoon.lyi
	lilypond Bassoon.ly

Clarinet1.pdf: $(infra) Clarinet1.ly parts/Clarinet1.lyi
	lilypond Clarinet1.ly

Clarinet2.pdf: $(infra) Clarinet2.ly parts/Clarinet2.lyi
	lilypond Clarinet2.ly

Clarinet3.pdf: $(infra) Clarinet3.ly parts/Clarinet3.lyi
	lilypond Clarinet3.ly

BassClarinet.pdf: $(infra) BassClarinet.ly parts/BassClarinet.lyi
	lilypond BassClarinet.ly

AltoSax1.pdf: $(infra) AltoSax1.ly parts/AltoSax1.lyi
	lilypond AltoSax1.ly

AltoSax2.pdf: $(infra) AltoSax2.ly parts/AltoSax2.lyi
	lilypond AltoSax2.ly

TenorSax.pdf: $(infra) TenorSax.ly parts/TenorSax.lyi
	lilypond TenorSax.ly

BariSax.pdf: $(infra) BariSax.ly parts/BariSax.lyi
	lilypond BariSax.ly

Trumpet1.pdf: $(infra) Trumpet1.ly parts/Trumpet1.lyi
	lilypond Trumpet1.ly

Trumpet2.pdf: $(infra) Trumpet2.ly parts/Trumpet2.lyi
	lilypond Trumpet2.ly

Trumpet3.pdf: $(infra) Trumpet3.ly parts/Trumpet3.lyi
	lilypond Trumpet3.ly

Horn1.pdf: $(infra) Horn1.ly parts/Horn1.lyi
	lilypond Horn1.ly

Horn2.pdf: $(infra) Horn2.ly parts/Horn2.lyi
	lilypond Horn2.ly

Trombone1.pdf: $(infra) Trombone1.ly parts/Trombone1.lyi
	lilypond Trombone1.ly

Trombone2.pdf: $(infra) Trombone2.ly parts/Trombone2.lyi
	lilypond Trombone2.ly

Trombone3.pdf: $(infra) Trombone3.ly parts/Trombone3.lyi
	lilypond Trombone3.ly

Baritone.pdf: $(infra) Baritone.ly parts/Baritone.lyi
	lilypond Baritone.ly

BaritoneTC.pdf: $(infra) BaritoneTC.ly parts/Baritone.lyi
	lilypond BaritoneTC.ly

StringBass.pdf: $(infra) StringBass.ly parts/Tuba.lyi
	lilypond StringBass.ly

Tuba.pdf: $(infra) Tuba.ly parts/Tuba.lyi
	lilypond Tuba.ly

MalletPercussion.pdf: $(infra) MalletPercussion.ly parts/MalletPercussion.lyi
	lilypond MalletPercussion.ly

Percussion1.pdf: $(infra) Percussion1.ly parts/Percussion1.lyi
	lilypond Percussion1.ly

Percussion2.pdf: $(infra) Percussion2.ly parts/Percussion2.lyi
	lilypond Percussion2.ly

Timpani.pdf: $(infra) Timpani.ly parts/Timpani.lyi
	lilypond Timpani.ly
