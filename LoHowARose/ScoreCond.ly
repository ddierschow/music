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
        \singleStaffTempo "Woodwinds" "Wo."
                << \outline \fluteOneCond \fluteTwoCond \oboeCond
                   \clarOneCond \clarTwoCond \clarThreeCond \bassclarCond
                   \altosaxOneCond \altosaxTwoCond \tenorsaxCond \barisaxCond
                   \malletpercCond >>
        \singleStaff "Brass" "Br."
                << \trumpetOneCond \trumpetTwoCond \trumpetThreeCond \hornOneCond \hornTwoCond >>
        \singleStaff "Bass Clef" "BC"
                << \bassoonCond \tromOneCond \tromTwoCond \tromThreeCond \baritoneCond \tubaCond >>
        \singleStaff "Timpani" "Ti"
                \timpaniCond
      >>
    >>
    % \header { piece = \headerPiece }
    \ScoreCondLayout
  }
}
