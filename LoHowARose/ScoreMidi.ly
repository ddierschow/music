\version "2.24.4"

\include "config.lyi"
\include "outline.lyi"
\include "allparts.lyi"

instrument = "Concert Band"

\book
{
  \score
  {
    \unfoldRepeats
    <<
      \tempomark
      \new Staff \with { midiInstrument = "flute" }
        { \new Voice { << \fluteOneScore \fluteTwoScore >> } }
      \new Staff \with { midiInstrument = "oboe" }
        { \new Voice { \oboeScore } }
      \new Staff \with { midiInstrument = "bassoon" }
        { \new Voice { \bassoonScore } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { << \clarOneScore \clarTwoScore \clarThreeScore \bassclarScore >> } }
      \new Staff \with { midiInstrument = "alto sax" }
        { \new Voice { << \altosaxOneScore \altosaxTwoScore >> } }
      \new Staff \with { midiInstrument = "tenor sax" }
        { \new Voice { << \tenorsaxScore \barisaxScore >>} }
      \new Staff \with { midiInstrument = "trumpet" }
        { \new Voice { << \trumpetOneScore \trumpetTwoScore \trumpetThreeScore >> } }
      \new Staff \with { midiInstrument = "french horn" }
        { \new Voice { << \hornOneScore \hornTwoScore >> } }
      \new Staff \with { midiInstrument = "trombone" }
        { \new Voice { << \tromOneScore \tromTwoScore \tromThreeScore \baritoneScore >> } }
      \new Staff \with { midiInstrument = "tuba" }
        { \new Voice { \tubaScore } }
      \new DrumStaff
        { \new DrumVoice { << \percOneScore \percTwoScore >> } }
      \new Staff \with { midiInstrument = "glockenspiel" }
        { \new Voice { \malletpercScore } }
      \new Staff \with { midiInstrument = "timpani" }
        { \new Voice { \timpaniScore } }
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
