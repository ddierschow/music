all: scores parts

scores: Score.pdf ScoreNT.pdf ScoreMidi.midi

parts: @partspdf@

clean:
	rm -f @partspdf@ *~ Score.pdf ScoreCond.pdf ScoreNT.pdf ScoreMidi.midi

Score.pdf: config.lyi ../common/defs.lyi outline.lyi layout.lyi Score.ly @partslyi@
	lilypond Score.ly

ScoreNT.pdf: config.lyi ../common/defs.lyi outline.lyi layout.lyi ScoreNT.ly @partslyi@
	lilypond ScoreNT.ly

ScoreMidi.midi: config.lyi ../common/defs.lyi outline.lyi ScoreMidi.ly @partslyi@
	lilypond ScoreMidi.ly

@blob@
