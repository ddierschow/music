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
      \midiStaff "glockenspiel" \malletpercScore
      \midiStaff "timpani" \timpaniScore
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
