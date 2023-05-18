\version "@version@"

instrument = "@ensemble@ (Concert Key)"

\include "config.lyi"
\include "outline.lyi"
\include "allparts.lyi"
\include "layout.lyi"

#(set-global-staff-size 14)

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
@blob@
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
