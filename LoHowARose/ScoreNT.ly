\version "2.24.4"

instrument = "Concert Band (Concert Key)"

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
        \doubleStaffTempo
            "Flute 1, 2" #(markup #:column ("Fl." #:line ("1, 2"))) #"1." #"2." << \fluteOneScore \outline >> \fluteTwoScore
        \singleStaff "Oboe" "Ob." \oboeScore
        \singleStaff "Bassoon" "Bsn." \bassoonScore
        \new GrandStaff <<
          \singleStaff #(markup #:column ("Clarinet 1" #:line ("in B" #:smaller #:flat))) "Cl.1" \clarOneScore
          \doubleStaff
              #(markup #:column ("Clarinet 2, 3" #:line ("in B" #:smaller #:flat)))
              #(markup #:column ("Cl." #:line ("2, 3"))) #"2." #"3." \clarTwoScore \clarThreeScore
          \singleStaff
              #(markup #:column ("Bass Clarinet" #:line ("in B" #:smaller #:flat))) "B.Cl." \bassclarScore
        >>
        \new GrandStaff <<
          \doubleStaff
              #(markup #:column ("Alto Saxophone 1, 2" #:line ("in E" #:smaller #:flat)))
              #(markup #:column ("A.Sx." #:line ("1, 2"))) #"1." #"2." \altosaxOneScore \altosaxTwoScore
          \singleStaff
              #(markup #:column ("Tenor Saxophone" #:line ("in B" #:smaller #:flat))) "T.Sx." \tenorsaxScore
          \singleStaff
              #(markup #:column ("Baritone Saxophone" #:line ("in E" #:smaller #:flat))) "B.Sx." \barisaxScore
        >>
      >>
      \new StaffGroup <<
        \new GrandStaff <<
          \singleStaff #(markup #:column ("Trumpet 1" #:line ("in B" #:smaller #:flat))) "Tr.1" \trumpetOneScore
          \doubleStaff
              #(markup #:column ("Trumpet 2, 3" #:line ("in B" #:smaller #:flat)))
              #(markup #:column ("Tr." #:line ("2, 3"))) #"2." #"3." \trumpetTwoScore \trumpetThreeScore
        >>
        \doubleStaff
            "Horn 1, 2 in F" #(markup #:column ("Hn." #:line ("1, 2"))) #"1." #"2." \hornOneScore \hornTwoScore
        \new GrandStaff <<
          \singleStaff "Trombone 1" "Trm.1" \tromOneScore
          \doubleStaff
              #(markup "Trombone 2, 3") #(markup #:column ("Trm." #:line ("2, 3"))) #"2." #"3." \tromTwoScore \tromThreeScore
        >>
        \singleStaff "Baritone" "Bar." \baritoneScore
        \singleStaff "Tuba" "Tuba" \tubaScore
        \singleStaff "String Bass" "Bass" \stringbassScore
      >>
      \new StaffGroup <<
        \drumStaff "Percussion 1" "Pe.1" \percOneScore
        \drumStaff "Percussion 2" "Pe.2" \percTwoScore
        \singleStaff "Mallet Percussion" "Mal." \malletpercScore
        \singleStaff "Timpani" "Tim." \timpaniScore
      >>
    >>
    \ScoreLayout
  }
}
