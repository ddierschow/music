\version "2.24.4"

\include "config.lyi"
\include "outline.lyi"
\include "allparts.lyi"

instrument = \workPerformer

\book
{
  \score
  {
    \unfoldRepeats
    <<
      \tempomark
      \new Staff \with { midiInstrument = "flute" }
        { \new Voice { << \outline \fluteOneScore \fluteTwoScore >> } }
      \new Staff \with { midiInstrument = "oboe" }
        { \new Voice { \oboeScore } }
      \new Staff \with { midiInstrument = "bassoon" }
        { \new Voice { \bassoonScore } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { << \clarOneScore \clarTwoScore \clarThreeScore >> } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { \relative c, \bassclarScore } }
      \new Staff \with { midiInstrument = "alto sax" }
        { \new Voice { << \sopsaxScore \altosaxOneScore \altosaxTwoScore >> } }
      \new Staff \with { midiInstrument = "baritone sax" }
        { \new Voice { << \tenorsaxScore \barisaxScore >> } }
      \new Staff \with { midiInstrument = "trumpet" }
        { \new Voice { << \trumpetOneScore \trumpetTwoScore \trumpetThreeScore >> } }
      \new Staff \with { midiInstrument = "french horn" }
        { \new Voice { << \hornOneScore \hornTwoScore >> } }
      \new Staff \with { midiInstrument = "trombone" }
        { \new Voice { << \tromOneScore \tromTwoScore \tromThreeScore \baritoneScore >> } }
      \new Staff \with { midiInstrument = "tuba" }
        { \new Voice { \tubaScore } }
      \new Staff \with { midiInstrument = "contrabass" }
        { \new Voice { \stringbassScore } }
      \new DrumStaff
        { \new DrumVoice { << \percOneScore \percTwoScore >> } }
      \new Staff \with { midiInstrument = "xylophone" }
        { \new Voice { << \malletOneScore \malletTwoScore >> } }
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
