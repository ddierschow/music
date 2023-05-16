\version "2.22.2"

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
      \new Staff \with { midiInstrument = "oboe" }
        { \new Voice { \relative c << \outline \oboeMidi >> } }
      \new Staff \with { midiInstrument = "flute" }
        { \new Voice { \relative c << \fluteOneMidi \fluteTwoMidi >> } }
      \new Staff \with { midiInstrument = "bassoon" }
        { \new Voice { \relative c << \bassoonMidi >> } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { \relative c << \clarinetOneMidi \clarinetTwoMidi \clarinetThreeMidi >> } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { \relative c, << \bassclarinetMidi >> } }
      \new Staff \with { midiInstrument = "alto sax" }
        { \new Voice { \relative c << \altosaxOneMidi \altosaxTwoMidi >> } }
      \new Staff \with { midiInstrument = "tenor sax" }
        { \new Voice { \relative c << \tenorsaxMidi >> } }
      \new Staff \with { midiInstrument = "baritone sax" }
        { \new Voice { \relative c << \barisaxMidi >> } }
      \new Staff \with { midiInstrument = "trumpet" }
        { \new Voice { \relative c << \trumpetOneMidi \trumpetTwoMidi \trumpetThreeMidi >> } }
      \new Staff \with { midiInstrument = "french horn" }
        { \new Voice { \relative c << \hornOneMidi \hornTwoMidi >> } }
      \new Staff \with { midiInstrument = "trombone" }
        { \new Voice { \relative c << \tromboneOneMidi \tromboneTwoMidi \tromboneThreeMidi \baritoneMidi >> } }
      \new Staff \with { midiInstrument = "tuba" }
        { \new Voice { \relative c << \tubaMidi >> } }
      \new Staff \with { midiInstrument = "contrabass" }
        { \new Voice { \relative c << \stringbassMidi >> } }
      \new DrumStaff
        { \new DrumVoice { \relative c << \percussionOneMidi \percussionTwoMidi >> } }
      \new Staff \with { midiInstrument = "xylophone" }
        { \new Voice { \relative c << \malletMidi >> } }
      \new Staff \with { midiInstrument = "timpani" }
        { \new Voice { \relative c << \timpaniMidi >> } }
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
