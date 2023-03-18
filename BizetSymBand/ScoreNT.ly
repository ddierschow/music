\version "2.13.5"

\include "defs.lyi"
\include "Flute1MvtIII.lyi"
\include "Flute2MvtIII.lyi"
\include "OboeMvtIII.lyi"
\include "BassoonMvtIII.lyi"
\include "Clarinet1MvtIII.lyi"
\include "Clarinet2MvtIII.lyi"
\include "Clarinet3MvtIII.lyi"
\include "BassClarinetMvtIII.lyi"
\include "AltoSax1MvtIII.lyi"
\include "AltoSax2MvtIII.lyi"
\include "TenorSaxMvtIII.lyi"
\include "BariSaxMvtIII.lyi"
\include "Trumpet1MvtIII.lyi"
\include "Trumpet2MvtIII.lyi"
\include "Trumpet3MvtIII.lyi"
\include "Horn1MvtIII.lyi"
\include "Horn2MvtIII.lyi"
\include "Trombone1MvtIII.lyi"
\include "Trombone2MvtIII.lyi"
\include "Trombone3MvtIII.lyi"
\include "BaritoneMvtIII.lyi"
\include "TubaMvtIII.lyi"
\include "PercussionMvtIII.lyi"
\include "TimpaniMvtIII.lyi"

#(set-global-staff-size 14)

instrument = "Concert Band (Concert Key)"

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
    mutopiainstrument = "Concert Band"
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
          \set Staff.instrumentName = "Flutes 1, 2"
	  \set Staff.shortInstrumentName = \markup { \column { "Fl." \line {"1, 2"} } }
            \new Voice {\keepWithTag #'score \relative c <<
		\outlineMvtIII
		\partcombine \fluteOneMvtIIIScore \fluteTwoMvtIIIScore
          >> }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Oboe"
          \set Staff.shortInstrumentName = "Ob."
            \new Voice {\keepWithTag #'score \oboeMvtIIIScore }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bassoon"
          \set Staff.shortInstrumentName = "Bs."
            \new Voice {\keepWithTag #'score \bassoonMvtIIIScore }
        }
	\new GrandStaff
	<<
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Clarinet 1"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "Cl.1"
	    \new Voice {\keepWithTag #'score \clarinetOneMvtIIIScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Clarinet 2, 3"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = \markup { \column { "Cl." \line {"2, 3"} } }
	    \set Staff.soloText = #"2."
	    \set Staff.soloIIText = #"3."
	    \set Staff.aDueText = #"unis."
	    \new Voice {\keepWithTag #'score \relative c <<
		\partcombine \clarinetTwoMvtIIIScore \clarinetThreeMvtIIIScore
	    >> }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Bass Clarinet"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "B.Cl."
	    \new Voice {\keepWithTag #'score \bassclarinetMvtIIIScore }
	  }
	>>
	\new GrandStaff
        <<
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Alto Saxophone 1, 2"
			\line { "in E" \smaller \flat} } }
	    \set Staff.shortInstrumentName = \markup { \column { "A.Sx." \line {"1, 2"} } }
	    \set Staff.soloText = #"1."
	    \set Staff.soloIIText = #"2."
	    \set Staff.aDueText = #"unis."
	    \new Voice {\keepWithTag #'score \relative c <<
		\partcombine \altosaxOneMvtIIIScore \altosaxTwoMvtIIIScore
	    >> }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Tenor Saxophone"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "T.Sx."
	      \new Voice {\keepWithTag #'score \tenorsaxMvtIIIScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Baritone Saxophone"
			\line { "in E" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "B.Sx."
	      \new Voice {\keepWithTag #'score \barisaxMvtIIIScore }
	  }
	>>
      >>
      \new StaffGroup
      <<
	\new GrandStaff
	<<
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Trumpet 1"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "Tr.1"
	    \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \trumpetOneMvtIIIScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Trumpets 2, 3"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = \markup { \column { "Tr." \line {"2, 3"} } }
	    \set Staff.soloText = #"2."
	    \set Staff.soloIIText = #"3."
	    \set Staff.aDueText = #"unis."
	    \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \relative c <<
		\partcombine \trumpetTwoMvtIIIScore \trumpetThreeMvtIIIScore
	    >> }
	  }
        >>
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup { \column { "Horns 1, 2" \line { "in F" } } }
	    \set Staff.shortInstrumentName = \markup { \column { "Hn." \line { "1, 2" } } }

	      \new Voice {\keepWithTag #'score \relative c <<
		\outlineMvtIII
		\partcombine \hornOneMvtIIIScore \hornTwoMvtIIIScore
	    >> }
	  }
	\new GrandStaff
	<<
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Trombone 1"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "Trm.1"
	    \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \tromboneOneMvtIIIScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Trombones 2, 3"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = \markup { \column { "Trm." \line {"2, 3"} } }
	    \set Staff.soloText = #"2."
	    \set Staff.soloIIText = #"3."
	    \set Staff.aDueText = #"unis."
	    \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \relative c <<
		\partcombine \tromboneTwoMvtIIIScore \tromboneThreeMvtIIIScore
	    >> }
	  }
        >>
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup "Baritone"
	    \set Staff.shortInstrumentName = "Bar."
	    \new Voice {\voiceOne \dynamicDown \keepWithTag #'score \baritoneMvtIIIScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup "String Bass"
	    \set Staff.shortInstrumentName = "Bass"
	    \new Voice {\voiceOne \dynamicDown \keepWithTag #'score \stringbassMvtIIIScore }
	  }
      >>
      \new StaffGroup
      <<
	\new Staff
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Percussion"
	  \set Staff.shortInstrumentName = "Pe."
	  \new Voice {\dynamicDown \keepWithTag #'score \percussionMvtIIIScore }
	}
	\new Staff
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Timpani"
	  \set Staff.shortInstrumentName = "Ti."
	  \new Voice {\dynamicDown \keepWithTag #'score \timpaniMvtIIIScore }
	}
      >>
    >>
  }

}
