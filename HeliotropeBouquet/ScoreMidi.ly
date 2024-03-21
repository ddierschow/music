\version "2.24.1"

\include "config.lyi"
\include "outline.lyi"
\include "allparts.lyi"

instrument = "Concert Band (Concert Key)"

\book
{
  \score
  {
    \unfoldRepeats
    <<
      \tempomark
      \new Staff \with { midiInstrument = "flute" }
        { \new Voice { \relative c << \outline \fluteOneMidi \fluteTwoMidi >> } }
      \new Staff \with { midiInstrument = "oboe" }
        { \new Voice { \relative c \oboeMidi } }
      \new Staff \with { midiInstrument = "bassoon" }
        { \new Voice { \relative c \bassoonMidi } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { \relative c << \clarOneMidi \clarTwoMidi \clarThreeMidi >> } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { \relative c, \bassclarMidi } }
      \new Staff \with { midiInstrument = "alto sax" }
        { \new Voice { \relative c << \sopsaxMidi \altosaxOneMidi \altosaxTwoMidi >> } }
      \new Staff \with { midiInstrument = "baritone sax" }
        { \new Voice { \relative c << \tenorsaxMidi \barisaxMidi >> } }
      \new Staff \with { midiInstrument = "trumpet" }
        { \new Voice { \relative c << \trumpetOneMidi \trumpetTwoMidi \trumpetThreeMidi >> } }
      \new Staff \with { midiInstrument = "french horn" }
        { \new Voice { \relative c << \hornOneMidi \hornTwoMidi >> } }
      \new Staff \with { midiInstrument = "trombone" }
        { \new Voice { \relative c << \tromOneMidi \tromTwoMidi \tromThreeMidi \baritoneMidi >> } }
      \new Staff \with { midiInstrument = "tuba" }
        { \new Voice { \relative c \tubaMidi } }
      \new Staff \with { midiInstrument = "contrabass" }
        { \new Voice { \relative c \stringbassMidi } }
      \new DrumStaff
        { \new DrumVoice { \relative c << \percussionOneMidi \percussionTwoMidi >> } }
      \new Staff \with { midiInstrument = "xylophone" }
        { \new Voice { \relative c << \malletOneMidi \malletTwoMidi >> } }
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
