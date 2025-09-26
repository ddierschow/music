\version "2.24.3"

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
        { \new Voice { \relative c << \fluteOneScore \fluteTwoScore >> } }
      \new Staff \with { midiInstrument = "oboe" }
        { \new Voice { \relative c \oboeScore } }
      \new Staff \with { midiInstrument = "bassoon" }
        { \new Voice { \relative c \bassoonScore } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { \relative c << \clarOneScore \clarTwoScore \clarThreeScore \bassclarScore >> } }
      \new Staff \with { midiInstrument = "alto sax" }
        { \new Voice { \relative c << \sopranosaxScore \altosaxOneScore \altosaxTwoScore >> } }
      \new Staff \with { midiInstrument = "tenor sax" }
        { \new Voice { \relative c << \tenorsaxScore \barisaxScore >>} }
      \new Staff \with { midiInstrument = "trumpet" }
        { \new Voice { \relative c << \trumpetOneScore \trumpetTwoScore \trumpetThreeScore >> } }
      \new Staff \with { midiInstrument = "french horn" }
        { \new Voice { \relative c << \hornOneScore \hornTwoScore >> } }
      \new Staff \with { midiInstrument = "trombone" }
        { \new Voice { \relative c << \tromOneScore \tromTwoScore \tromThreeScore \baritoneScore >> } }
      \new Staff \with { midiInstrument = "tuba" }
        { \new Voice { \relative c \tubaScore } }
      \new DrumStaff
        { \new DrumVoice { \relative c << \percOneScore \percTwoScore >> } }
      \new Staff \with { midiInstrument = "glockenspiel" }
        { \new Voice { \relative c \malletpercScore } }
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
