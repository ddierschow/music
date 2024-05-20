scores := Score ScoreNT
parts := @partlist@
infra := allparts.lyi config.lyi layout.lyi outline.lyi part.lyi

scorepdfs := $(scores:%=%.pdf) ScoreMidi.midi
scoresrcs := $(scores:%=%.ly)
partprods := $(parts)
partpdfs := $(partprods:%=%.pdf)
partincs := $(parts:%=%.lyi)
partsrcs := $(partprods:%=%.ly)

all: scores parts

scores: $(scorepdfs)

parts: $(partpdfs)

clean:
	rm -f $(partpdfs) $(scorepdfs) *~

parts: @partspdf@

clean:
	rm -f @partspdf@ *~ Score.pdf ScoreCond.pdf ScoreNT.pdf ScoreMidi.midi

Score.pdf: Score.ly $(infra) $(partincs)
	lilypond Score.ly

ScoreNT.pdf: ScoreNT.ly $(infra) $(partincs)
	lilypond ScoreNT.ly

ScoreMidi.midi: $(infra) $(partincs)
	lilypond ScoreMidi.ly

@blob@
