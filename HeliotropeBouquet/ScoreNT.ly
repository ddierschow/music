\version "2.24.1"

instrument = "Concert Band (Concert Key)"

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
          \set Staff.instrumentName = "Flutes 1, 2"
          \set Staff.shortInstrumentName = \markup { \column { "Fl." \line {"1, 2"} } }
          \new Voice { \keepWithTag #'score \relative c << \outline \partCombine \fluteOneScore \fluteTwoScore >> }
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
        \new GrandStaff
        <<
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Clarinet 1" \line { "in B" \smaller \flat} } }
            \set Staff.shortInstrumentName = "Cl.1"
            \new Voice { \keepWithTag #'score \clarOneScore }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Clarinet 2, 3" \line { "in B" \smaller \flat} } }
            \set Staff.shortInstrumentName = \markup { \column { "Cl." \line {"2, 3"} } }
            \set Staff.soloText = #"2."
            \set Staff.soloIIText = #"3."
            \set Staff.aDueText = #"unis."
            \new Voice { \keepWithTag #'score \relative c << \partCombine \clarTwoScore \clarThreeScore >> }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Bass Clarinet" \line { "in B" \smaller \flat} } }
            \set Staff.shortInstrumentName = "B.Cl."
            \new Voice { \keepWithTag #'score \bassclarScore }
          }
        >>
        \new GrandStaff
        <<
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Soprano Saxophone" \line { "in B" \smaller \flat} } }
            \set Staff.shortInstrumentName = "S.Sx."
            \new Voice { \keepWithTag #'score \sopsaxScore }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Alto Saxophone 1, 2" \line { "in E" \smaller \flat} } }
            \set Staff.shortInstrumentName = \markup { \column { "A.Sx." \line {"1, 2"} } }
            \set Staff.soloText = #"1."
            \set Staff.soloIIText = #"2."
            \set Staff.aDueText = #"unis."
            \new Voice { \keepWithTag #'score \relative c << \partCombine \altosaxOneScore \altosaxTwoScore >> }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Tenor Saxophone" \line { "in B" \smaller \flat} } }
            \set Staff.shortInstrumentName = "T.Sx."
            \new Voice { \keepWithTag #'score \tenorsaxScore }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Baritone Saxophone" \line { "in E" \smaller \flat} } }
            \set Staff.shortInstrumentName = "B.Sx."
            \new Voice { \keepWithTag #'score \barisaxScore }
          }
        >>
      >>
      \new StaffGroup
      <<
        \new GrandStaff
        <<
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Trumpet 1" \line { "in B" \smaller \flat} } }
            \set Staff.shortInstrumentName = "Tr.1"
            \new Voice { \voiceOne \dynamicUp \keepWithTag #'score \trumpetOneScore }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Trumpets 2, 3" \line { "in B" \smaller \flat} } }
            \set Staff.shortInstrumentName = \markup { \column { "Tr." \line {"2, 3"} } }
            \set Staff.soloText = #"2."
            \set Staff.soloIIText = #"3."
            \set Staff.aDueText = #"unis."
            \new Voice { \voiceOne \dynamicUp \keepWithTag #'score \relative c <<
                \partCombine \trumpetTwoScore \trumpetThreeScore >> }
          }
        >>
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Horns 1, 2" \line { "in F" } } }
            \set Staff.shortInstrumentName = \markup { \column { "Hn." \line { "1, 2" } } }
            \new Voice { \keepWithTag #'score \relative c << \outline \partCombine \hornOneScore \hornTwoScore >> }
          }
        \new GrandStaff
        <<
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Trombone 1" \line { "in B" \smaller \flat} } }
            \set Staff.shortInstrumentName = "Trm.1"
            \new Voice { \voiceOne \dynamicUp \keepWithTag #'score \tromOneScore }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup { \column { "Trombones 2, 3" \line { "in B" \smaller \flat} } }
            \set Staff.shortInstrumentName = \markup { \column { "Trm." \line {"2, 3"} } }
            \set Staff.soloText = #"2."
            \set Staff.soloIIText = #"3."
            \set Staff.aDueText = #"unis."
            \new Voice { \voiceOne \dynamicUp \keepWithTag #'score \relative c << \partCombine \tromTwoScore \tromThreeScore >> }
          }
        >>
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup "Baritone"
            \set Staff.shortInstrumentName = "Bar."
            \new Voice { \voiceOne \dynamicDown \keepWithTag #'score \baritoneScore }
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = \markup "String Bass"
            \set Staff.shortInstrumentName = "Bass"
            \new Voice { \voiceOne \dynamicDown \keepWithTag #'score \stringbassScore }
          }
      >>
      \new StaffGroup
      <<
        \new DrumStaff \with { drumStyleTable = #(alist->hash-table mydrums) }
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Percussion 1"
          \set Staff.shortInstrumentName = "Pe.1"
          \new DrumVoice { \dynamicDown \keepWithTag #'score \relative c \percussionOneScore }
        }
        \new DrumStaff \with { drumStyleTable = #(alist->hash-table mydrums) }
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Percussion 2"
          \set Staff.shortInstrumentName = "Pe.2"
          \new DrumVoice { \dynamicDown \keepWithTag #'score \relative c \percussionTwoScore }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Mallet Percussion 1"
          \set Staff.shortInstrumentName = "Mal.Pe.1"
          \new Voice { \dynamicDown \keepWithTag #'score \relative c \malletOneScore }
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Mallet Percussion 2"
          \set Staff.shortInstrumentName = "Mal.Pe.2"
          \new Voice { \dynamicDown \keepWithTag #'score \relative c \malletTwoScore }
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
