\version "2.24.4"

instrument = "Concert Band"

\include "config.lyi"
\include "score.lyi"

\ScorePaper

\book
{
  \BookHeader
%  \pageBreak

  \score
  {
    \ScoreHeader
    <<
      \new StaffGroup <<
        \doubleStaffTempo
            "Flute 1, 2" #(markup #:column ("Fl." #:line ("1, 2"))) #"1." #"2." << \outline \fluteCOneScore >> \fluteCTwoScore
        \singleStaff "Oboe" "Ob." \oboeCScore
        \singleStaff "Bassoon" "Bsn." \bassoonCScore
        \new GrandStaff <<
          \singleStaff #(markup #:column ("Clarinet 1" #:line ("in B" #:smaller #:flat))) "Cl.1" \clarBesOneScore
          \doubleStaff
              #(markup #:column ("Clarinet 2, 3" #:line ("in B" #:smaller #:flat)))
              #(markup #:column ("Cl." #:line ("2, 3"))) #"2." #"3." \clarBesTwoScore \clarBesThreeScore
          \singleStaff #(markup #:column ("Bass Clarinet" #:line ("in B" #:smaller #:flat))) "B.Cl." \bassclarBesScore
        >>
        \new GrandStaff <<
          \doubleStaff
              #(markup #:column ("Alto Saxophone 1, 2" #:line ("in E" #:smaller #:flat)))
              #(markup #:column ("A.Sx." #:line ("1, 2"))) #"1." #"2." \altosaxEesOneScore \altosaxEesTwoScore
          \singleStaff #(markup #:column ("Tenor Saxophone" #:line ("in B" #:smaller #:flat))) "T.Sx." \tenorsaxBesScore
          \singleStaff #(markup #:column ("Baritone Saxophone" #:line ("in E" #:smaller #:flat))) "B.Sx." \barisaxEesScore
        >>
      >>
      \new StaffGroup <<
        \new GrandStaff <<
          \singleStaff #(markup #:column ("Trumpet 1" #:line ("in B" #:smaller #:flat))) "Tr.1" \trumpetBesOneScore
          \doubleStaff
              #(markup #:column ("Trumpet 2, 3" #:line ("in B" #:smaller #:flat)))
              #(markup #:column ("Tr." #:line ("2, 3"))) #"2." #"3." \trumpetBesTwoScore \trumpetBesThreeScore
        >>
        \doubleStaff "Horn 1, 2 in F" #(markup #:column ("Hn." #:line ("1, 2"))) #"1." #"2." \hornFOneScore \hornFTwoScore
        \new GrandStaff <<
          \singleStaff "Trombone 1" "Trm.1" \tromCOneScore
          \doubleStaff "Trombone 2, 3" #(markup #:column ("Trm." #:line ("2, 3"))) #"2." #"3." \tromCTwoScore \tromCThreeScore
        >>
        \singleStaff "Baritone" "Bar." \baritoneCScore
        \singleStaff "Tuba" "Tuba" \tubaCScore
        \singleStaff "String Bass" "Bass" \stringbassCScore
      >>
      \new StaffGroup <<
        %\drumStaff "Percussion 1" "Pe.1" \percOneScore
        %\drumStaff "Percussion 2" "Pe.2" \percTwoScore
        \singleStaff "Mallet Percussion" "Mal." \malletpercCScore
        \singleStaff "Timpani" "Tim." \timpaniCScore
      >>
    >>
    % \header { piece = \headerPiece }
    \ScoreLayout
  }
}
