\version "2.22.2"

\include "config.lyi"
\include "defs.lyi"
\include "outline.lyi"
\include "Flute1.lyi"
\include "Flute2.lyi"
\include "Oboe.lyi"
\include "Bassoon.lyi"
\include "Clarinet1.lyi"
\include "Clarinet2.lyi"
\include "Clarinet3.lyi"
\include "BassClarinet.lyi"
\include "AltoSax1.lyi"
\include "AltoSax2.lyi"
\include "TenorSax.lyi"
\include "BariSax.lyi"
\include "Trumpet1.lyi"
\include "Trumpet2.lyi"
\include "Trumpet3.lyi"
\include "Horn1.lyi"
\include "Horn2.lyi"
\include "Trombone1.lyi"
\include "Trombone2.lyi"
\include "Trombone3.lyi"
\include "Baritone.lyi"
\include "Tuba.lyi"
\include "Percussion1.lyi"
\include "Percussion2.lyi"
\include "MalletPercussion.lyi"
\include "Timpani.lyi"

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
    title = \markup{Heliotrope Bouquet}
    subtitle = "A Slow Drag Two Step"
    opus = ""
    subsubtitle = "Scott Joplin and Louis Chauvin"
    copyright = ""
    instrument = \instrument

    mutopiatitle = "Heliotrope Bouquet"
    mutopiacomposer = "Joplin/Chauvin"
    mutopiaopus = ""
    mutopiainstrument = "Concert Band"
    date = "1907"
    source = ""
    style = "Ragtime"
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
          \tempomark
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Flutes 1, 2"
	  \set Staff.shortInstrumentName = \markup { \column { "Fl." \line {"1, 2"} } }
            \new Voice {\keepWithTag #'score \relative c <<
		\outline
		\partCombine \fluteOneScore \fluteTwoScore
          >> }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Oboe"
          \set Staff.shortInstrumentName = "Ob."
            \new Voice {\keepWithTag #'score \oboeScore }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bassoon"
          \set Staff.shortInstrumentName = "Bs."
            \new Voice {\keepWithTag #'score \bassoonScore }
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
	    \new Voice {\keepWithTag #'score \clarinetOneScore }
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
		\partCombine \clarinetTwoScore \clarinetThreeScore
	    >> }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Bass Clarinet"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "B.Cl."
	    \new Voice {\keepWithTag #'score \bassclarinetScore }
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
		\partCombine \altosaxOneScore \altosaxTwoScore
	    >> }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Tenor Saxophone"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "T.Sx."
	      \new Voice {\keepWithTag #'score \tenorsaxScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Baritone Saxophone"
			\line { "in E" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "B.Sx."
	      \new Voice {\keepWithTag #'score \barisaxScore }
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
	    \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \trumpetOneScore }
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
		\partCombine \trumpetTwoScore \trumpetThreeScore
	    >> }
	  }
        >>
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup { \column { "Horns 1, 2" \line { "in F" } } }
	    \set Staff.shortInstrumentName = \markup { \column { "Hn." \line { "1, 2" } } }

	      \new Voice {\keepWithTag #'score \relative c <<
		\outline
		\partCombine \hornOneScore \hornTwoScore
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
	    \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \tromboneOneScore }
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
		\partCombine \tromboneTwoScore \tromboneThreeScore
	    >> }
	  }
        >>
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup "Baritone"
	    \set Staff.shortInstrumentName = "Bar."
	    \new Voice {\voiceOne \dynamicDown \keepWithTag #'score \baritoneScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup "String Bass"
	    \set Staff.shortInstrumentName = "Bass"
	    \new Voice {\voiceOne \dynamicDown \keepWithTag #'score \stringbassScore }
	  }
      >>
      \new StaffGroup
      <<
	\new Staff
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Percussion 1"
	  \set Staff.shortInstrumentName = "Pe.1"
	  \new Voice {\dynamicDown \keepWithTag #'score \relative c \percussionOneScore }
	}
	\new Staff
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Percussion 2"
	  \set Staff.shortInstrumentName = "Pe.2"
	  \new Voice {\dynamicDown \keepWithTag #'score \relative c \percussionTwoScore }
	}
	\new Staff
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Mallet Percussion"
	  \set Staff.shortInstrumentName = "Mal.Pe."
	  \new Voice {\dynamicDown \keepWithTag #'score \relative c \malletScore }
	}
	\new Staff
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Timpani"
	  \set Staff.shortInstrumentName = "Ti."
	  \new Voice {\dynamicDown \keepWithTag #'score \timpaniScore }
	}
      >>
    >>
    \layout
    {
      max-systems-per-page = #1
      systems-per-page = #1
      %\context { \RemoveEmptyStaffContext }
    }
  }

}