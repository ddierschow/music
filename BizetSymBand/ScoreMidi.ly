\version "2.24.4"

\include "config.lyi"
\include "outline.lyi"
\include "allparts.lyi"

instrument = "Concert Band (Concert Key)"

\version "2.24.4"

instrument = "Concert Band"

\include "config.lyi"
\include "score.lyi"

\book
{
  \score
  {
    \unfoldRepeats
     <<
      \tempomark
      \midiStaff "flute" << \fluteOneScore \fluteTwoScore >>
      \midiStaff "oboe" \oboeScore
      \midiStaff "bassoon" \bassoonScore
      \midiStaff "clarinet" << \clarOneScore \clarTwoScore \clarThreeScore \bassclarScore >>
      \midiStaff "alto sax" << \altosaxOneScore \altosaxTwoScore >>
      \midiStaff "tenor sax" << \tenorsaxScore \barisaxScore >>
      \midiStaff "trumpet" << \trumpetOneScore \trumpetTwoScore \trumpetThreeScore >>
      \midiStaff "french horn" << \hornOneScore \hornTwoScore >>
      \midiStaff "trombone" << \tromOneScore \tromTwoScore \tromThreeScore \baritoneScore >>
      \midiStaff "tuba" \tubaScore
      \midiDrumStaff << \percOneScore \percTwoScore >>
      \midiStaff "glockenspiel" \malletScore
      \midiStaff "timpani" \timpaniScore
    >>
    \midi
    {
      \context {
        \Score
        midiMinimumVolume = #0.1
        midiMaximumVolume = #0.6
      }
    }
  }
}
