\version "2.24.4"

instrument = "Concert Band (Concert Key)"

\include "config.lyi"
\include "outline.lyi"
\include "allparts.lyi"

#(set-global-staff-size 14)

\include "layout.lyi"

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
        \new Staff
        {
          \tempomark
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Flutes 1, 2"
          \set Staff.shortInstrumentName = \markup { \column { "Fl." \line { "1, 2" } } }
          \set Staff.soloText = #"1."
          \set Staff.soloIIText = #"2."
          \set Staff.aDueText = #"unis."
          \new Voice { \keepWithTag #'score << \outline \partCombine \fluteOneScore \fluteTwoScore >> }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Oboe"
          \set Staff.shortInstrumentName = "Ob."
          \new Voice { \keepWithTag #'score \oboeScore }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bassoon"
          \set Staff.shortInstrumentName = "Bsn."
          \new Voice { \keepWithTag #'score \bassoonScore }
        }
        \new GrandStaff <<
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { "Clarinet 1 in B" \smaller \flat }
            \set Staff.shortInstrumentName = "Cl.1"
            \new Voice { \keepWithTag #'score \clarOneScore }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Clarinet 2, 3" \line { "in B" \smaller \flat } } }
            \set Staff.shortInstrumentName = \markup { \column { "Cl." \line { "2, 3" } } }
            \set Staff.soloText = #"2."
            \set Staff.soloIIText = #"3."
            \set Staff.aDueText = #"unis."
            \new Voice { \keepWithTag #'score << \partCombine \clarTwoScore \clarThreeScore >> }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Bass Clarinet" \line { "in B" \smaller \flat } } }
            \set Staff.shortInstrumentName = "B.Cl."
            \new Voice { \keepWithTag #'score \bassclarScore }
          }
        >>
        \new GrandStaff <<
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Alto Saxophone 1, 2" \line { "in E" \smaller \flat } } }
            \set Staff.shortInstrumentName = \markup { \column { "A.Sx." \line { "1, 2" } } }
            \set Staff.soloText = #"1."
            \set Staff.soloIIText = #"2."
            \set Staff.aDueText = #"unis."
            \new Voice { \keepWithTag #'score << \partCombine \altosaxOneScore \altosaxTwoScore >> }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Tenor Saxophone" \line { "in B" \smaller \flat } } }
            \set Staff.shortInstrumentName = "T.Sx."
            \new Voice { \keepWithTag #'score \tenorsaxScore }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Baritone Saxophone" \line { "in E" \smaller \flat } } }
            \set Staff.shortInstrumentName = "B.Sx."
            \new Voice { \keepWithTag #'score \barisaxScore }
          }
        >>
      >>
      \new StaffGroup <<
        \new GrandStaff <<
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Trumpet 1" \line { "in B" \smaller \flat } } }
            \set Staff.shortInstrumentName = "Tr.1"
            \new Voice { \keepWithTag #'score \trumpetOneScore }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Trumpets 2, 3" \line { "in B" \smaller \flat } } }
            \set Staff.shortInstrumentName = \markup { \column { "Tr." \line { "2, 3" } } }
            \set Staff.soloText = #"2."
            \set Staff.soloIIText = #"3."
            \set Staff.aDueText = #"unis."
            \new Voice { \keepWithTag #'score << \partCombine \trumpetTwoScore \trumpetThreeScore >> }
          }
        >>
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = \markup { \column { "Horns 1, 2" \line { "in F" } } }
          \set Staff.shortInstrumentName = \markup { \column { "Hn." \line { "1, 2" } } }
          \set Staff.soloText = #"1."
          \set Staff.soloIIText = #"2."
          \set Staff.aDueText = #"unis."
          \new Voice { \keepWithTag #'score << \outline \partCombine \hornOneScore \hornTwoScore >> }
        }
        \new GrandStaff <<
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = "Trombone 1"
            \set Staff.shortInstrumentName = "Trm.1"
            \new Voice { \keepWithTag #'score \tromOneScore }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = "Trombones 2, 3"
            \set Staff.shortInstrumentName = \markup { \column { "Trm." \line { "2, 3" } } }
            \set Staff.soloText = #"2."
            \set Staff.soloIIText = #"3."
            \set Staff.aDueText = #"unis."
            \new Voice { \keepWithTag #'score << \partCombine \tromTwoScore \tromThreeScore >> }
          }
        >>
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Baritone"
          \set Staff.shortInstrumentName = "Bar."
          \new Voice { \keepWithTag #'score \baritoneScore }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Tuba"
          \set Staff.shortInstrumentName = "Tuba"
          \new Voice { \keepWithTag #'score \tubaScore }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "String Bass"
          \set Staff.shortInstrumentName = "Bass"
          \new Voice { \keepWithTag #'score \stringbassScore }
        }
      >>
      \new StaffGroup <<
        \new DrumStaff \with { drumStyleTable = #(alist->hash-table mydrums) }
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Percussion 1"
          \set Staff.shortInstrumentName = "Pe.1"
          \new DrumVoice { \keepWithTag #'score \percOneScore }
        }
        \new DrumStaff \with { drumStyleTable = #(alist->hash-table mydrums) }
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Percussion 2"
          \set Staff.shortInstrumentName = "Pe.2"
          \new DrumVoice { \keepWithTag #'score \percTwoScore }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Mallet Percussion"
          \set Staff.shortInstrumentName = "Mal."
          \new Voice { \keepWithTag #'score \malletpercCScore }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Timpani"
          \set Staff.shortInstrumentName = "Tim."
          \new Voice { \keepWithTag #'score \timpaniCScore }
        }
      >>
    >>
    \layout
    {
      max-systems-per-page = #1
      systems-per-page = #1
      %\context { \RemoveEmptyStaffContext }
    }
  }

}
