\version "2.24.4"

% This score is sorted by SATB, to help check part coverage and note consistency.

instrument = "Concert Band"

\include "config.lyi"
\include "score.lyi"

\ScorePaper

\book
{
  \BookHeader

  \score
  {
    \ScoreHeader
    <<
      \new StaffGroup <<
        \singleStaffTempo "Flute 1" "Fl.1" << \outline \fluteCOneScore >>
        \singleStaff "Oboe" "Ob." \oboeCScore
        \singleStaff #(markup #:column ("Clarinet 1" #:line ("in B" #:smaller #:flat))) "Cl.1" \clarBesOneScore
        \singleStaff #(markup #:column ("Alto Saxophone 1" #:line ("in E" #:smaller #:flat))) "A.Sx.1" \altosaxEesOneScore
        \singleStaff #(markup #:column ("Trumpet 1" #:line ("in B" #:smaller #:flat))) "Tr.1" \trumpetBesOneScore
        \singleStaff "Horn 1 in F" "Hn.1" \hornFOneScore
        \singleStaff "Trombone 1" "Trm.1" \tromCOneScore
        \singleStaff "Baritone" "Bar." \baritoneCScore
        \singleStaff "Mallet Percussion" "Mal." \malletpercCScore
      >>

      \new StaffGroup <<
        \singleStaff "Flute 2" "Fl.2" \fluteCTwoScore
        \singleStaff #(markup #:column ("Clarinet 2" #:line ("in B" #:smaller #:flat))) "Cl.2" \clarBesTwoScore
        \singleStaff #(markup #:column ("Alto Saxophone 2" #:line ("in E" #:smaller #:flat))) "A.Sx.2" \altosaxEesTwoScore
        \singleStaff #(markup #:column ("Trumpet 2" #:line ("in B" #:smaller #:flat))) "Tr.2" \trumpetBesTwoScore
        \singleStaff "Horn 2 in F" "Hn.2" \hornFTwoScore
        \singleStaff "Trombone 2" "Trm.2" \tromCTwoScore
      >>

      \new StaffGroup <<
        \singleStaff #(markup #:column ("Clarinet 3" #:line ("in B" #:smaller #:flat))) "Cl.3" \clarBesThreeScore
        \singleStaff #(markup #:column ("Tenor Saxophone" #:line ("in B" #:smaller #:flat))) "T.Sx." \tenorsaxBesScore
        \singleStaff #(markup #:column ("Trumpet 3" #:line ("in B" #:smaller #:flat))) "Tr.3" \trumpetBesThreeScore
        \singleStaff "Trombone 3" "Trm.3" \tromCThreeScore
      >>

      \new StaffGroup <<
        \singleStaff "Bassoon" "Bsn." \bassoonCScore
        \singleStaff #(markup #:column ("Bass Clarinet" #:line ("in B" #:smaller #:flat))) "B.Cl." \bassclarBesScore
        \singleStaff #(markup #:column ("Baritone Saxophone" #:line ("in E" #:smaller #:flat))) "B.Sx." \barisaxEesScore
        \singleStaff "Tuba" "Tuba" \tubaCScore
        \singleStaff "String Bass" "Bass" \stringbassCScore
      >>

      \new StaffGroup <<
        \singleStaff "Timpani" "Tim." \timpaniCScore
      >>
    >>
    \ScoreLayout
  }
}
