\version "2.22.2"

instrument = "Concert Band"

% This may be a pipe dream.

\include "config.lyi"
\include "outline.lyi"
\include "allparts.lyi"
\include "layout.lyi"

#(set-global-staff-size 14)

\ScorePaper

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
  \ScoreHeader

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
	\new DrumStaff \with { drumStyleTable = #(alist->hash-table mydrums) }
	{
          #(set-accidental-style 'modern)
	  \set Staff.instrumentName = "Percussion"
	  \set Staff.shortInstrumentName = "Perc."
	  \new DrumVoice { \dynamicDown \keepWithTag #'score \relative c <<
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
