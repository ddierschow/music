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
        { \new Voice { \relative c << \fluteOneMidi \fluteTwoMidi >> } }
      \new Staff \with { midiInstrument = "oboe" }
        { \new Voice { \relative c \oboeMidi } }
      \new Staff \with { midiInstrument = "bassoon" }
        { \new Voice { \relative c \bassoonMidi } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { \relative c << \clarOneMidi \clarTwoMidi \clarThreeMidi \bassclarMidi >> } }
      \new Staff \with { midiInstrument = "alto sax" }
        { \new Voice { \relative c << \sopranosaxMidi \altosaxOneMidi \altosaxTwoMidi >> } }
      \new Staff \with { midiInstrument = "tenor sax" }
        { \new Voice { \relative c << \tenorsaxMidi \barisaxMidi >>} }
      \new Staff \with { midiInstrument = "trumpet" }
        { \new Voice { \relative c << \trumpetOneMidi \trumpetTwoMidi \trumpetThreeMidi >> } }
      \new Staff \with { midiInstrument = "french horn" }
        { \new Voice { \relative c << \hornOneMidi \hornTwoMidi >> } }
      \new Staff \with { midiInstrument = "trombone" }
        { \new Voice { \relative c << \tromOneMidi \tromTwoMidi \tromThreeMidi \baritoneMidi >> } }
      \new Staff \with { midiInstrument = "tuba" }
        { \new Voice { \relative c \tubaMidi } }
      \new DrumStaff
        { \new DrumVoice { \relative c << \percOneMidi \percTwoMidi >> } }
      \new Staff \with { midiInstrument = "glockenspiel" }
        { \new Voice { \relative c \malletpercMidi } }
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
