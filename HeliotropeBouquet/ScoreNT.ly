\version "2.24.4"

instrument = "Concert Band (Concert Key)"

\include "config.lyi"
\include "score.lyi"

\ScorePaper

\book
{
  \BookHeader
  \pageBreak

  \score
  {
    \ScoreHeader
    <<
      \new StaffGroup <<
        \doubleStaffTempo
            #(markup "Flute 1, 2") #(markup #:column ("Fl." #:line ("1, 2"))) #"1." #"2." \fluteOneScore \fluteTwoScore
        \singleStaff #(markup "Oboe") #(markup "Ob.") \oboeScore
        \singleStaff #(markup "Bassoon") #(markup "Bsn.") \bassoonScore
        \new GrandStaff <<
          \singleStaff #(markup #:column ("Clarinet 1" #:line ("in B" #:smaller #:flat))) #(markup "Cl.1") \clarOneScore
          \doubleStaff
              #(markup #:column ("Clarinet 2, 3" #:line ("in B" #:smaller #:flat)))
              #(markup #:column ("Cl." #:line ("2, 3"))) #"2." #"3." \clarTwoScore \clarThreeScore
          \singleStaff
              #(markup #:column ("Bass Clarinet" #:line ("in B" #:smaller #:flat))) #(markup "B.Cl.") \bassclarScore
        >>
        \new GrandStaff <<
          \singleStaff
              #(markup #:column ("Soprano Saxophone" #:line ("in B" #:smaller #:flat))) #(markup "S.Sx.") \sopsaxScore
          \doubleStaffTempo
              #(markup #:column ("Alto Saxophone 1, 2" #:line ("in E" #:smaller #:flat)))
              #(markup #:column ("A.Sx." #:line ("1, 2"))) #"1." #"2." \altosaxOneScore \altosaxTwoScore
          \singleStaff
              #(markup #:column ("Tenor Saxophone" #:line ("in B" #:smaller #:flat))) #(markup "T.Sx.") \tenorsaxScore
          \singleStaff
              #(markup #:column ("Baritone Saxophone" #:line ("in E" #:smaller #:flat))) #(markup "B.Sx.") \barisaxScore
        >>
      >>
      \new StaffGroup <<
        \new GrandStaff <<
          \singleStaff #(markup #:column ("Trumpet 1" #:line ("in B" #:smaller #:flat))) #(markup "Tr.1") \trumpetOneScore
          \doubleStaff
              #(markup #:column ("Trumpet 2, 3" #:line ("in B" #:smaller #:flat)))
              #(markup #:column ("Tr." #:line ("2, 3"))) #"2." #"3." \trumpetTwoScore \trumpetThreeScore
        >>
        \doubleStaffTempo
            #(markup "Horn 1, 2") #(markup #:column ("Hn." #:line ("1, 2"))) #"1." #"2." \hornOneScore \hornTwoScore
        \new GrandStaff <<
          \singleStaff #(markup "Trombone 1") #(markup "Trm.1") \tromOneScore
          \doubleStaff
              #(markup "Trombone 2, 3") #(markup #:column ("Trm." #:line ("2, 3"))) #"2." #"3." \tromTwoScore \tromThreeScore
        >>
        \singleStaff #(markup "Baritone") #(markup "Bar.") \baritoneScore
        \singleStaff #(markup "Tuba") #(markup "Tuba") \tubaScore
        \singleStaff #(markup "String Bass") #(markup "Bass") \stringbassScore
      >>
      \new StaffGroup <<
        \drumStaff #(markup "Percussion 1") #(markup "Pe.1") \percOneScore
        \drumStaff #(markup "Percussion 2") #(markup "Pe.2") \percTwoScore
        \doubleStaff #(markup "Mallet Percussion 1, 2") #(markup #:column ("Mal." #:line ("1, 2"))) #"1." #"2."
            \malletOneScore \malletTwoScore
        %\singleStaff #(markup "Timpani") #(markup "Tim.") \timpaniScore
      >>
    >>
    % \header { piece = \headerPiece }
    \scoreLayout
  }
}
