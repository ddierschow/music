\version "2.24.4"

instrument = "Concert Band"

% This may be a pipe dream.

\include "config.lyi"
\include "score.lyi"

\ScorePaper

\book
{
  \BookHeader

  \score
  {
    \ScoreHeader <<
      \new StaffGroup <<
        \singleStaffTempo #(markup "Woodwinds") #(markup "Wo.")))
                << \outline \fluteOneCond \fluteTwoCond \oboeCond
                   \clarOneCond \clarTwoCond \clarThreeCond \bassclarCond
                   \sopsaxCond \altosaxOneCond \altosaxTwoCond \tenorsaxCond \barisaxCond
                   \malletOneCond \malletTwoCond >> }
        \singleStaff #(markup "Brass") #(markup "Br.")))
                << \trumpetOneCond \trumpetTwoCond \trumpetThreeCond \hornOneCond \hornTwoCond >>
        \singleStaff #(markup "Bass Clef") #(markup "BC")))
                << \bassoonCond \tromOneCond \tromTwoCond \tromThreeCond \baritoneCond \tubaCond >>
        \drumStaff #(markup "Percussion") #(markup "Pe.") << \percOneCond \percTwoCond >>
      >>
    >>
    % \header { piece = \headerPiece }
    \scoreCondLayout
  }
}
