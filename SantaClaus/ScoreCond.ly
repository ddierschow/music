\version "2.24.3"

instrument = "Concert Band"

\include "config.lyi"
\include "outline.lyi"
\include "allparts.lyi"

#(set-global-staff-size 14)

\include "layout.lyi"

\ScorePaper

\book
{
  \ScoreHeader
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
          \set Staff.instrumentName = "Woodwinds"
          \set Staff.shortInstrumentName = "Wo."
          \new Voice {\keepWithTag #'score \relative c << \outline
                \fluteOneCond \fluteTwoCond \oboeCond
                \clarOneCond \clarTwoCond \clarThreeCond \bassclarCond
                \sopranosaxCond \altosaxOneCond \altosaxTwoCond \tenorsaxCond \barisaxCond
                \malletpercCond >> }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Brass"
          \set Staff.shortInstrumentName = "Br."
          \new Voice {\voiceOne \keepWithTag #'score \relative c <<
                \trumpetOneCond \trumpetTwoCond \trumpetThreeCond \hornOneScore \hornTwoScore >> }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bass Clef"
          \set Staff.shortInstrumentName = "BC"
          \new Voice {\voiceOne \keepWithTag #'score \relative c <<
                \bassoonCond \tromOneCond \tromTwoCond \tromThreeCond \baritoneCond \tubaCond >> }
        }
        \new DrumStaff \with { drumStyleTable = #(alist->hash-table mydrums) }
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Percussion"
          \set Staff.shortInstrumentName = "Pe."
          \new DrumVoice {\dynamicDown \keepWithTag #'score << \percOneCond \percTwoCond >> }
        }
      >>
    >>
    % \header { piece = \headerPiece }
    \layout
    {
      max-systems-per-page = #2
      systems-per-page = #2
      %\context { \RemoveEmptyStaffContext }
    }
  }
}
