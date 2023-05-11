\version "2.22.2"

\include "config.lyi"
\include "outline.lyi"
\include "allparts.lyi"

#(set-global-staff-size 14)

instrument = "Concert Band"

\paper
{
  systems-per-page = #1
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  top-margin = 14\mm
  left-margin = 22\mm
  right-margin = 22\mm
  bottom-margin = 14\mm
}

\book
{
  \header
  {
    title = \markup{Heliotrope Bouquet}
    subtitle = "A Slow Drag Two Step"
    opus = ""
    subsubtitle = "Scott Joplin and Louis Chauvin"
    arranger = \markup { \italic "arr. Dean Dierschow" }
    copyright = ""
    instrument = \instrument

    mutopiatitle = "Heliotrope Bouquet"
    mutopiacomposer = "Joplin/Chauvin"
    mutopiaopus = ""
    mutopiainstrument = "Concert Band"
    date = "1907"
    source = ""
    style = "Ragtime"
    maintainer = "Dean Dierschow"
    maintainerEmail = "deandierschow@gmail.com"
    lastupdated = ""
    meter = "Slow March Tempo"

    footer = ""
    tagline = ""
  }
  % \pageBreak

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
          \set Staff.shortInstrumentName = "Fl."
            \new Voice {\keepWithTag #'score \relative c <<
		\outline
		\partCombine \fluteCOneScore \fluteCTwoScore
          >> }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Oboe"
          \set Staff.shortInstrumentName = "Ob."
            \new Voice {\keepWithTag #'score \relative c \oboeCScore }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bassoon"
          \set Staff.shortInstrumentName = "Bs."
            \new Voice {\keepWithTag #'score \relative c \bassoonCScore }
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
	    \new Voice {\keepWithTag #'score \relative c \clarinetBesOneScore }
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
		\partCombine \clarinetBesTwoScore \clarinetBesThreeScore
	    >> }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Bass Clarinet"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "B.Cl."
	    \new Voice {\keepWithTag #'score \relative c \bassclarinetBesScore }
	  }
	>>
	\new GrandStaff
        <<
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Alto Saxophones 1, 2"
			\line { "in E" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "A.Sx."
	      \new Voice {\keepWithTag #'score \relative c <<
		  \partCombine \altosaxEesOneScore \altosaxEesTwoScore
	    >> }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Tenor Saxophone"
			\line { "in B" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "T.Sx."
	      \new Voice {\keepWithTag #'score \relative c \tenorsaxBesScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup {
	      \column { "Baritone Saxophone"
			\line { "in E" \smaller \flat} } }
	    \set Staff.shortInstrumentName = "B.Sx."
	      \new Voice {\keepWithTag #'score \relative c \barisaxEesScore }
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
	    \new Voice {\voiceOne \keepWithTag #'score \relative c \trumpetBesOneScore }
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
		\partCombine \trumpetBesTwoScore \trumpetBesThreeScore
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
		\partCombine \hornFOneScore \hornFTwoScore
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
	    \new Voice {\voiceOne \keepWithTag #'score \tromboneCOneScore }
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
		\partCombine \tromboneCTwoScore \tromboneCThreeScore
	    >> }
	  }
        >>
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup "Baritone"
	    \set Staff.shortInstrumentName = "Bar."
	    \new Voice {\voiceOne \keepWithTag #'score \relative c \baritoneCScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup "Tuba"
	    \set Staff.shortInstrumentName = "Tuba"
	    \new Voice {\voiceOne \keepWithTag #'score \relative c \tubaCScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup "String Bass"
	    \set Staff.shortInstrumentName = "Bass"
	    \new Voice {\voiceOne \keepWithTag #'score \relative c \stringbassCScore }
	  }
      >>
      \new StaffGroup
      <<
	\new DrumStaff \with { drumStyleTable = #(alist->hash-table mydrums) }
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Percussion 1"
	  \set Staff.shortInstrumentName = "Pe.1"
	  \new DrumVoice {\dynamicDown \keepWithTag #'score \relative c \percussionOneScore }
	}
	\new DrumStaff \with { drumStyleTable = #(alist->hash-table mydrums) }
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Percussion 2"
	  \set Staff.shortInstrumentName = "Pe.2"
	  \new DrumVoice {\dynamicDown \keepWithTag #'score \relative c \percussionTwoScore }
	}
	\new Staff
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Mallet Percussion"
	  \set Staff.shortInstrumentName = "Mal.Pe."
	  \new Voice {\dynamicDown \keepWithTag #'score \relative c \malletCScore }
	}
      >>
    >>
    % \header { piece = \headerPiece }
    \layout
    {
      max-systems-per-page = #1
      systems-per-page = #1
      %\context { \RemoveEmptyStaffContext }
    }
  }
}
