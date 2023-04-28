\version "2.22.2"

\include "config.lyi"
\include "defs.lyi"
\include "outline.lyi"
\include "Flute1.lyi"
\include "Flute2.lyi"
\include "Oboe.lyi"
\include "Bassoon.lyi"
\include "Clarinet1.lyi"
\include "Clarinet2.lyi"
\include "Clarinet3.lyi"
\include "BassClarinet.lyi"
\include "AltoSax1.lyi"
\include "AltoSax2.lyi"
\include "TenorSax.lyi"
\include "BariSax.lyi"
\include "Trumpet1.lyi"
\include "Trumpet2.lyi"
\include "Trumpet3.lyi"
\include "Horn1.lyi"
\include "Horn2.lyi"
\include "Trombone1.lyi"
\include "Trombone2.lyi"
\include "Trombone3.lyi"
\include "Baritone.lyi"
\include "Tuba.lyi"
\include "Percussion1.lyi"
\include "Percussion2.lyi"
\include "MalletPercussion.lyi"
\include "Timpani.lyi"

instrument = "Concert Band (Concert Key)"


\book
{
  \score
  {
    \unfoldRepeats
    <<
        \new Staff
        {
          \tempomark
          \new Voice {\keepWithTag #'score \relative c <<
            \outline \fluteOneScore \fluteTwoScore \oboeScore \bassoonScore >> }
        }
        \new Staff
        {
          \new Voice {\keepWithTag #'score \relative c <<
            \clarinetOneScore \clarinetTwoScore \clarinetThreeScore \bassclarinetScore >> }
        }
        \new Staff
        {
          \new Voice {\keepWithTag #'score \relative c <<
            \altosaxOneScore \altosaxTwoScore \tenorsaxScore \barisaxScore >> }
        }
        \new Staff
        {
          \new Voice {\keepWithTag #'score \relative c <<
            \trumpetOneScore \trumpetTwoScore \trumpetThreeScore \hornOneScore \hornTwoScore >> }
        }
        \new Staff
        {
          \new Voice {\keepWithTag #'score \relative c <<
            \tromboneOneScore \tromboneTwoScore \tromboneThreeScore \baritoneScore \tubaScore >> } 
        }
        \new Staff
        {
          \new Voice {\keepWithTag #'score \relative c <<
            \stringbassScore \percussionOneScore \percussionTwoScore \malletScore \timpaniScore >> }
	}
    >>
    \midi
    {
    }
  }
}
