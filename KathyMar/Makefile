songs := Cathedrals Edward StarshipAndHaiku Velveteen
infra := layout.lyi ScoreMHB.lyi ScoreSATB.lyi ScoreGS.lyi ScoreMidi.lyi template.ly ../common/defs.lyi
types := GS MHB-BT MHB-CB MHB-CT MHB-ET MHB-FT SATB-BT SATB-CB SATB-CT SATB-ET SATB-FT

songincs := $(songs:%=%.lyi)
songpdfs := $(songs:%=%-*.pdf)
songsrcs := $(songs:%=%.tly)
songmidis := $(songs:%=%.midi)
songbooks := $(types:%=Songbook-%.pdf)

all: $(songmidis)

clean:
	rm -f *~

pristine: clean
	rm -f $(songpdfs) $(songsrcs) $(songmidis)

$(types:%=Cathedrals-%.pdf) Cathedrals.midi: $(infra) Cathedrals.lyi
	./makesong.py Cathedrals
	lilypond Cathedrals.tly

$(types:%=DrinkUpTheRiver-%.pdf) DrinkUpTheRiver.midi: $(infra) DrinkUpTheRiver.lyi
	./makesong.py DrinkUpTheRiver
	lilypond DrinkUpTheRiver.tly

$(types:%=Edward-%.pdf) Edward.midi: $(infra) Edward.lyi
	./makesong.py Edward
	lilypond Edward.tly

$(types:%=StarshipAndHaiku-%.pdf) StarshipAndHaiku.midi: $(infra) StarshipAndHaiku.lyi
	./makesong.py StarshipAndHaiku
	lilypond StarshipAndHaiku.tly

$(types:%=Velveteen-%.pdf) Velveteen.midi: $(infra) Velveteen.lyi
	./makesong.py Velveteen
	lilypond Velveteen.tly

songbooks:
	./assemble MHB CT
	./assemble MHB FT
	./assemble MHB BT
	./assemble MHB ET
	./assemble MHB CB
	./assemble SATB CT
	./assemble SATB FT
	./assemble SATB BT
	./assemble SATB ET
	./assemble SATB CB
	./assemble GS C
