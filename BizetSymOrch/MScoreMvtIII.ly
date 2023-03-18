\version "2.13.5"

\include "defs.lyi"
\include "Flute1MvtIII.lyi"
\include "Flute2MvtIII.lyi"
\include "Oboe1MvtIII.lyi"
\include "Oboe2MvtIII.lyi"
\include "Clarinet1MvtIII.lyi"
\include "Clarinet2MvtIII.lyi"
\include "Bassoon1MvtIII.lyi"
\include "Bassoon2MvtIII.lyi"
\include "Horn1MvtIII.lyi"
\include "Horn2MvtIII.lyi"
\include "Horn3MvtIII.lyi"
\include "Horn4MvtIII.lyi"
\include "Trumpet1MvtIII.lyi"
\include "Trumpet2MvtIII.lyi"
\include "TimpaniMvtIII.lyi"
\include "Violin1MvtIII.lyi"
\include "Violin2MvtIII.lyi"
\include "ViolaMvtIII.lyi"
\include "CelloMvtIII.lyi"
\include "BassMvtIII.lyi"

#(set-global-staff-size 14)

instrument = "Orchestra"

\paper
{
  systems-per-page = #1
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  top-margin = 18\mm
  left-margin = 22\mm
  right-margin = 22\mm
  bottom-margin = 18\mm
}

\book
{
  \header
  {
    title = \markup{Symphony No. 1}
    subtitle = "Movement III: Minuetto"
    opus = ""
    subsubtitle = "Georges Bizet (1838-1875)"
    copyright = ""
    instrument = \instrument

    mutopiatitle = "Symphony No. 1 Movement III"
    mutopiacomposer = "Bizet"
    mutopiaopus = ""
    mutopiainstrument = "Orchestra"
    date = "1855"
    source = ""
    style = "Classical"
    maintainer = ""
    maintainerEmail = ""
    lastupdated = ""

    footer = ""
    tagline = ""
  }
  \pageBreak

  \score
  {
    <<
      \new StaffGroup
      <<
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Flutes"
          \set Staff.shortInstrumentName = "Fl."
            \new Voice {\keepWithTag #'score \relative c <<
		\outlineMvtIII
		\partcombine \fluteOneMvtIIIScore \fluteTwoMvtIIIScore
          >> }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Oboes"
          \set Staff.shortInstrumentName = "Ob."
            \new Voice {\keepWithTag #'score \relative c <<
		\partcombine \oboeOneMvtIIIScore \oboeTwoMvtIIIScore
          >> }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = \markup {
            \column { "Clarinets"
                      \line { "in B" \smaller \flat} } }
          \set Staff.shortInstrumentName = "Cl."
            \new Voice {\keepWithTag #'score \relative c <<
		\partcombine \clarinetBesOneMvtIIIScore \clarinetBesTwoMvtIIIScore
          >> }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bassoons"
          \set Staff.shortInstrumentName = "Bs."
            \new Voice {\keepWithTag #'score \relative c <<
		\partcombine \bassoonOneMvtIIIScore \bassoonTwoMvtIIIScore
          >> }
        }
      >>
      \new StaffGroup
      <<
	\new GrandStaff
	<<
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup { \column { "Horns I,II" \line { "in F" } } }
	    %\set Staff.shortInstrumentName = "Hn.1/2"
	    \set Staff.shortInstrumentName = \markup { \column { "Hn." \line { "1/2" } } }

	      \new Voice {\keepWithTag #'score \relative c <<
		\outlineMvtIII
		\partcombine \hornFOneMvtIIIScore \hornFTwoMvtIIIScore
	    >> }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup { \column { "Horns III,IV" \line { "in F" } } }
	    %\set Staff.shortInstrumentName = "Hn.3/4"
	    \set Staff.shortInstrumentName = \markup { \column { "Hn." \line { "3/4" } } }
	      \new Voice {\keepWithTag #'score \relative c <<
		\partcombine \hornFThreeMvtIIIScore \hornFFourMvtIIIScore
	    >> }
	  }
	>>
	\new Staff
	{
	  #(set-accidental-style 'modern)
	  \set Staff.instrumentName = \markup {
	    \column { "Trumpets"
                      \line { "in B" \smaller \flat} } }
	  \set Staff.shortInstrumentName = "Tr."
	    \new Voice {\keepWithTag #'score \relative c <<
		\partcombine \trumpetBesOneMvtIIIScore \trumpetBesTwoMvtIIIScore
	  >> }
	}
	\new Staff
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Timpani"
	  \set Staff.shortInstrumentName = "Ti."
	  <<
	    \new Voice {\keepWithTag #'score \relative c \timpaniMvtIIIScore }
	  >>
	}
      >>
      \new StaffGroup
      <<
        \new GrandStaff
        <<
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = "Violin I"
            \set Staff.shortInstrumentName = "Vl.I"
	    <<
	      \new Voice {\keepWithTag #'score \relative c <<
		\outlineMvtIII
		\violinOneMvtIIIScore
		>> }
	    >>
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = "Violin II"
            \set Staff.shortInstrumentName = "Vl.II"
	    <<
	      \new Voice {\keepWithTag #'score \relative c <<
		\violinTwoMvtIIIScore
		>> }
	    >>
          }
        >>
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Viola"
          \set Staff.shortInstrumentName = "Va."
          <<
	    \new Voice {\keepWithTag #'score \relative c <<
		\violaMvtIIIScore
		>> }
	  >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Cello"
          \set Staff.shortInstrumentName = "Vc."
          <<
	    \new Voice {\keepWithTag #'score \relative c <<
		\celloMvtIIIScore
		>> }
	  >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bass"
          \set Staff.shortInstrumentName = "Cb."
          <<
	    \new Voice {\keepWithTag #'score \relative c <<
		\bassMvtIIIScore
		>> }
	  >>
        }
      >>
    >>
    \header { piece = \MvtIII }
    \layout
    {
      max-systems-per-page = #1
      systems-per-page = #1
      %\context { \RemoveEmptyStaffContext }
    }
  }

  \score
  {
    %\unfoldTremolos
    \unfoldRepeats
    {
    <<
      \new Staff
      {
	\set Score.tempoHideNote = ##t
	\tempo 2. = 132
        \set Staff.midiInstrument = "flute"
        <<
          \relative c' \fluteOneMvtIIIScore
          \relative c' \fluteTwoMvtIIIScore
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "oboe"
        <<
          \relative c' \oboeOneMvtIIIScore
          \relative c' \oboeTwoMvtIIIScore
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "clarinet"
        <<
          \relative c'' \clarinetOneMvtIIIScore
          \relative c'' \clarinetTwoMvtIIIScore
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "bassoon"
        <<
          \relative c \bassoonOneMvtIIIScore
          \relative c \bassoonTwoMvtIIIScore
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        <<
          \relative c' \hornOneMvtIIIScore
          \relative c' \hornTwoMvtIIIScore
          \relative c' \hornThreeMvtIIIScore
          \relative c' \hornFourMvtIIIScore
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "trumpet"
        <<
          \relative c' \trumpetOneMvtIIIScore
          \relative c' \trumpetTwoMvtIIIScore
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "timpani"
        \relative c, \timpaniMvtIIIScore
      }
      \new Staff
      {
        \set Staff.midiInstrument = "string ensemble 1"
        <<
          \relative c''' \violinOneMvtIIIScore
          \relative c' \violinTwoMvtIIIScore
          \relative c \violaMvtIIIScore
          \relative c' \celloMvtIIIScore
          << \relative c' \bassMvtIIIScore \outlineMvtIII >>
        >>
      }
    >>
    }
    \midi
    {
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
