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
            #(markup "Flute 1, 2") #(markup #:column ("Fl." #:line ("1, 2"))) #"1." #"2." \fluteCOneScore \fluteCTwoScore
        \singleStaff #(markup "Oboe") #(markup "Ob.") \oboeCScore
        \singleStaff #(markup "Bassoon") #(markup "Bsn.") \bassoonCScore
        \new GrandStaff <<
          \singleStaff #(markup #:column ("Clarinet 1" #:line ("in B" #:smaller #:flat))) #(markup "Cl.1") \clarBesOneScore
          \doubleStaff
              #(markup #:column ("Clarinet 2, 3" #:line ("in B" #:smaller #:flat)))
              #(markup #:column ("Cl." #:line ("2, 3"))) #"2." #"3." \clarBesTwoScore \clarBesThreeScore
          \singleStaff
              #(markup #:column ("Bass Clarinet" #:line ("in B" #:smaller #:flat))) #(markup "B.Cl.") \bassclarBesScore
        >>
        \new GrandStaff <<
          \doubleStaffTempo
              #(markup #:column ("Alto Saxophone 1, 2" #:line ("in E" #:smaller #:flat)))
              #(markup #:column ("A.Sx." #:line ("1, 2"))) #"1." #"2." \altosaxEesOneScore \altosaxEesTwoScore
          \singleStaff
              #(markup #:column ("Tenor Saxophone" #:line ("in B" #:smaller #:flat))) #(markup "T.Sx.") \tenorsaxBesScore
          \singleStaff
              #(markup #:column ("Baritone Saxophone" #:line ("in E" #:smaller #:flat))) #(markup "B.Sx.") \barisaxEesScore
        >>
      >>
      \new StaffGroup <<
        \new GrandStaff <<
          \singleStaff #(markup #:column ("Trumpet 1" #:line ("in B" #:smaller #:flat))) #(markup "Tr.1") \trumpetBesOneScore
          \doubleStaff
              #(markup #:column ("Trumpet 2, 3" #:line ("in B" #:smaller #:flat)))
              #(markup #:column ("Tr." #:line ("2, 3"))) #"2." #"3." \trumpetBesTwoScore \trumpetBesThreeScore
        >>
        \doubleStaffTempo
            #(markup "Horn 1, 2") #(markup #:column ("Hn." #:line ("1, 2"))) #"1." #"2." \hornFOneScore \hornFTwoScore
        \new GrandStaff <<
          \singleStaff #(markup "Trombone 1") #(markup "Trm.1") \tromCOneScore
          \doubleStaff
              #(markup "Trombone 2, 3") #(markup #:column ("Trm." #:line ("2, 3"))) #"2." #"3." \tromCTwoScore \tromCThreeScore
        >>
        \singleStaff #(markup "Baritone") #(markup "Bar.") \baritoneCScore
        \singleStaff #(markup "Tuba") #(markup "Tuba") \tubaCScore
        \singleStaff #(markup "String Bass") #(markup "Bass") \stringbassCScore
      >>
      \new StaffGroup <<
        %\drumStaff #(markup "Percussion 1") #(markup "Pe.1") \percOneScore
        %\drumStaff #(markup "Percussion 2") #(markup "Pe.2") \percTwoScore
        \singleStaff #(markup "Mallet Percussion") #(markup "Mal.") \malletpercCScore
        \singleStaff #(markup "Timpani") #(markup "Tim.") \timpaniCScore
      >>
    >>
    % \header { piece = \headerPiece }
    \scoreLayout
  }
}
