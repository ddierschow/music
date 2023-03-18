\version "2.22.2"

\include "defs.lyi"
\include "Outline.lyi"
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
\include "Percussion.lyi"
\include "Timpani.lyi"

#(set-global-staff-size 14)

instrument = "Concert Band"

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
    title = \markup{Heliotrope Boquet}
    subtitle = "A Slow Drag Two Step"
    opus = ""
    subsubtitle = "Scott Joplin and Louis Chauvin"
    copyright = ""
    instrument = \instrument

    mutopiatitle = "Heliotrope Boquet"
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
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Flutes 1, 2"
          \set Staff.shortInstrumentName = "Fl."
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
            \new Voice {\keepWithTag #'score \relative c \oboeScore }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bassoon"
          \set Staff.shortInstrumentName = "Bs."
            \new Voice {\keepWithTag #'score \relative c \bassoonScore }
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
	    \new Voice {\voiceOne \keepWithTag #'score \tromboneOneScore }
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
	    \new Voice {\voiceOne \keepWithTag #'score \relative c \baritoneScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup "Tuba"
	    \set Staff.shortInstrumentName = "Tuba"
	    \new Voice {\voiceOne \keepWithTag #'score \relative c \tubaScore }
	  }
	  \new Staff
	  {
	    #(set-accidental-style 'modern)
	    \set Staff.instrumentName = \markup "String Bass"
	    \set Staff.shortInstrumentName = "Bass"
	    \new Voice {\voiceOne \keepWithTag #'score \relative c \stringbassScore }
	  }
      >>
      \new StaffGroup
      <<
	\new Staff
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Percussion"
	  \set Staff.shortInstrumentName = "Pe."
	  \new Voice {\dynamicDown \keepWithTag #'score \relative c \percussionScore }
	}
	\new Staff
	{
	    #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Timpani"
	  \set Staff.shortInstrumentName = "Ti."
	  \new Voice {\dynamicDown \keepWithTag #'score \relative c \timpaniScore }
	}
      >>
    >>
    \header { piece = \headerPiece }
    \layout
    {
      max-systems-per-page = #1
      systems-per-page = #1
      %\context { \RemoveEmptyStaffContext }
    }
  }

%{
%  \score
%  {
%    %\unfoldTremolos
%    \unfoldRepeats
%    {
%    <<
%      \new Staff
%      {
%	\set Score.tempoHideNote = ##t
%	\tempo 2. = 132
%        \set Staff.midiInstrument = "flute"
%        <<
%          \relative c' \fluteOneScore
%          \relative c' \fluteTwoScore
%        >>
%      }
%      \new Staff
%      {
%        \set Staff.midiInstrument = "oboe"
%        <<
%          \relative c' \oboeOneScore
%        >>
%      }
%      \new Staff
%      {
%        \set Staff.midiInstrument = "clarinet"
%        <<
%          \relative c'' \clarinetOneScore
%          \relative c'' \clarinetTwoScore
%          \relative c'' \clarinetThreeScore
%        >>
%      }
%      \new Staff
%      {
%        \set Staff.midiInstrument = "bassoon"
%        <<
%          \relative c \bassoonOneScore
%        >>
%      }
%      \new Staff
%      {
%        \set Staff.midiInstrument = "french horn"
%        <<
%          \relative c' \hornOneScore
%          \relative c' \hornTwoScore
%        >>
%      }
%      \new Staff
%      {
%        \set Staff.midiInstrument = "trumpet"
%        <<
%          \relative c' \trumpetOneScore
%          \relative c' \trumpetTwoScore
%          \relative c' \trumpetThreeScore
%        >>
%      }
%      \new Staff
%      {
%        \set Staff.midiInstrument = "timpani"
%        \relative c, \timpaniScore
%      }
%    >>
%    }
%    \midi
%    {
%      \context
%      {
%        \Voice
%        \remove "Dynamic_performer"
%      }
%    }
%  }
%}
}
