\version "@version@"
% generated file - do not edit

\include "../common/defs.lyi"

instrument = \markup { "C Instruments - " \smaller \raise #1 \musicglyph #"clefs.F" }
\include "@filename@.lyi"
ikey = \keyCB
tkey = "CB"
iclf = bass

\include "ScoreMHB.lyi"
\include "ScoreSATB.lyi"

instrument = \markup { "C Instruments - " \teeny \raise #1 \musicglyph #"clefs.G" }
\include "@filename@.lyi"
ikey = \keyCT
tkey = "CT"
iclf = treble

\include "ScoreMHB.lyi"
\include "ScoreSATB.lyi"

\include "ScoreMidi.lyi"

instrument = \markup { "C Instruments - Grand Staff" }

\include "ScoreGS.lyi"

instrument = \markup { "F Instruments - " \teeny \raise #1 \musicglyph #"clefs.G" }
\include "@filename@.lyi"
ikey = \keyFT
tkey = "FT"

\include "ScoreMHB.lyi"
\include "ScoreSATB.lyi"

instrument = \markup { "B" \smaller \flat " Instruments - " \teeny \raise #1 \musicglyph #"clefs.G" }
\include "@filename@.lyi"
ikey = \keyBT
tkey = "BT"

\include "ScoreMHB.lyi"
\include "ScoreSATB.lyi"

instrument = \markup { "E" \smaller \flat " Instruments - " \teeny \raise #1 \musicglyph #"clefs.G" }
\include "@filename@.lyi"
ikey = \keyET
tkey = "ET"

\include "ScoreMHB.lyi"
\include "ScoreSATB.lyi"
