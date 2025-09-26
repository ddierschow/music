\version "2.24.4"

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
        { \new Voice { \relative c << \outline \oboeScore >> } }
      \new Staff \with { midiInstrument = "flute" }
        { \new Voice { \relative c << \fluteOneScore \fluteTwoScore >> } }
      \new Staff \with { midiInstrument = "bassoon" }
        { \new Voice { \relative c << \bassoonScore >> } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { \relative c << \clarinetOneScore \clarinetTwoScore \clarinetThreeScore >> } }
      \new Staff \with { midiInstrument = "clarinet" }
        { \new Voice { \relative c, << \bassclarinetScore >> } }
      \new Staff \with { midiInstrument = "alto sax" }
        { \new Voice { \relative c << \altosaxOneScore \altosaxTwoScore >> } }
      \new Staff \with { midiInstrument = "tenor sax" }
        { \new Voice { \relative c << \tenorsaxScore >> } }
      \new Staff \with { midiInstrument = "baritone sax" }
        { \new Voice { \relative c << \barisaxScore >> } }
      \new Staff \with { midiInstrument = "trumpet" }
        { \new Voice { \relative c << \trumpetOneScore \trumpetTwoScore \trumpetThreeScore >> } }
      \new Staff \with { midiInstrument = "french horn" }
        { \new Voice { \relative c << \hornOneScore \hornTwoScore >> } }
      \new Staff \with { midiInstrument = "trombone" }
        { \new Voice { \relative c << \tromboneOneScore \tromboneTwoScore \tromboneThreeScore \baritoneScore >> } }
      \new Staff \with { midiInstrument = "tuba" }
        { \new Voice { \relative c << \tubaScore >> } }
      \new Staff \with { midiInstrument = "contrabass" }
        { \new Voice { \relative c << \stringbassScore >> } }
      \new DrumStaff
        { \new DrumVoice { \relative c << \percussionOneScore \percussionTwoScore >> } }
      \new Staff \with { midiInstrument = "xylophone" }
        { \new Voice { \relative c << \malletScore >> } }
      \new Staff \with { midiInstrument = "timpani" }
        { \new Voice { \relative c << \timpaniScore >> } }
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
