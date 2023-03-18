\version "2.13.5"

\include "defs.lyi" 
%\include "Horn2MvtI.lyi" 
%\include "Horn2MvtII.lyi" 
\include "Horn2MvtIII.lyi" 
%\include "Horn2MvtIV.lyi" 

instrument = "Horn II in G"

%notesMvtI = \hornTwoMvtI
%notesMvtII = \hornTwoMvtII
notesMvtIII = \transpose g c \hornTwoMvtIIIPart
%notesMvtIV = \hornTwoMvtIV

\include "Part.lyi"

