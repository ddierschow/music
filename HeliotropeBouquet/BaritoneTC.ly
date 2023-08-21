\version "2.24.1"

\include "config.lyi"
\include "Baritone.lyi"

instrument = \markup { "Baritone" \teeny \musicglyph #"clefs.G_change" "in B" \smaller \flat }

notes = \baritoneTCPart

\include "part.lyi"
