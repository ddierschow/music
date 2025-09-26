\version "2.24.1"

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
        { \new Voice { \relative c << \outline \fluteOneScore \fluteTwoScore >> } }
      \new Staff \with { midiInstrument = "oboe" }
        { \new Voice { \relative c \oboeScore } }
      \new Staff \with { midiInstrument = "bassoon" }
        { \new Voice { \relative c \bassoonScore } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { \relative c << \clarOneScore \clarTwoScore \clarThreeScore >> } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { \relative c, \bassclarScore } }
      \new Staff \with { midiInstrument = "alto sax" }
        { \new Voice { \relative c << \sopsaxScore \altosaxOneScore \altosaxTwoScore >> } }
      \new Staff \with { midiInstrument = "baritone sax" }
        { \new Voice { \relative c << \tenorsaxScore \barisaxScore >> } }
      \new Staff \with { midiInstrument = "trumpet" }
        { \new Voice { \relative c << \trumpetOneScore \trumpetTwoScore \trumpetThreeScore >> } }
      \new Staff \with { midiInstrument = "french horn" }
        { \new Voice { \relative c << \hornOneScore \hornTwoScore >> } }
      \new Staff \with { midiInstrument = "trombone" }
        { \new Voice { \relative c << \tromOneScore \tromTwoScore \tromThreeScore \baritoneScore >> } }
      \new Staff \with { midiInstrument = "tuba" }
        { \new Voice { \relative c \tubaScore } }
      \new Staff \with { midiInstrument = "contrabass" }
        { \new Voice { \relative c \stringbassScore } }
      \new DrumStaff
        { \new DrumVoice { \relative c << \percussionOneScore \percussionTwoScore >> } }
      \new Staff \with { midiInstrument = "xylophone" }
        { \new Voice { \relative c << \malletOneScore \malletTwoScore >> } }
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
