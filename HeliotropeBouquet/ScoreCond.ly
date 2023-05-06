\version "2.22.2"

% This may be a pipe dream.

\include "config.lyi"
\include "defs.lyi"
\include "outline.lyi"
\include "allparts.lyi"

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

woodwinds =
<<
  \fluteOneCond \fluteTwoCond \oboeCond
  \clarinetOneCond \clarinetTwoCond \clarinetThreeCond \bassclarinetCond 
  \altosaxOneCond \altosaxTwoCond \tenorsaxCond \barisaxCond
>>

brass =
<<
  \trumpetOneCond \trumpetTwoCond \trumpetThreeCond \hornOneCond \hornTwoCond
>>

bassclef =
<<
  \bassoonCond
  \tromboneOneCond \tromboneTwoCond \tromboneThreeCond \baritoneCond \tubaCond
>>

percussion =
<<
  \percussionOneCond \percussionTwoCond \malletCond
>>

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
    meter = "Slow March Tempo"

    footer = ""
    tagline = ""
  }

  \score
  {
    <<
      \new StaffGroup
      <<
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Woodwinds"
          \set Staff.shortInstrumentName = "Woodw."
          \new Voice { \keepWithTag #'score \relative c <<
              \outline \woodwinds
          >> }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Brass"
          \set Staff.shortInstrumentName = "Brass"
          \new Voice { \keepWithTag #'score \relative c <<
              \brass
          >> }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Brass"
          \set Staff.shortInstrumentName = "Brass"
          \new Voice { \keepWithTag #'score \relative c <<
              \bassclef
          >> }
        }
	\new Staff
	{
          #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Percussion"
	  \set Staff.shortInstrumentName = "Perc."
	  \new Voice { \dynamicDown \keepWithTag #'score \relative c <<
              \percussion
          >> }
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
