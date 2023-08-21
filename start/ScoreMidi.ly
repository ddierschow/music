\version "@version@"

\include "config.lyi"
\include "outline.lyi"
\include "allparts.lyi"

instrument = "@ensemble@"

\book
{
  \score
  {
    \unfoldRepeats
    <<
      \tempomark
@blob@
    >>
    \midi
    {
      \context {
        \Score
        midiMinimumVolume = #0.2
        midiMaximumVolume = #0.5
      }
    }
  }
}
