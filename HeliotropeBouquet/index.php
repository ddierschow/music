<?php
include "../bin/helpers.php";

$insts = [
    "Flute1", "Flute2", "Oboe", "Bassoon",
    "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "AltoSax1", "AltoSax2", "TenorSax", "BariSax",  // how saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2",
    "Trombone1", "Trombone2", "Trombone3", "Baritone", "BaritoneTC",
    "StringBass", "Tuba",
    "Percussion1", "Percussion2", "MalletPercussion", "Timpani"
];

echo "<table border=0><tr><td>\n";
echo "<table border=1>\n";

echo "<tr><td colspan=3><center><h2>heliotrope bouquet</h2></center></td></tr>\n";

show_grid(['Score', 'ScoreCond', 'ScoreNT'], ['.ly', '.midi', '.pdf']);
show_grid(['ScoreMidi'], ['.ly', '.midi', '.']);

echo "<tr><td colspan=3>\n";
echo "<p><ul>\n";
show_link("http://lilypond.org/doc/v2.22/Documentation/notation-big-page.html", "LilyPond_--_Notation_Reference");
show_link("https://silverclefmusic.com/about-scores-for-band/", "Scores_for_Band</a");
show_link("https://www.orchestralibrary.com/reftables/rang.html", "Range_of_Instruments");
show_link("https://web.mit.edu/merolish/Public/drums.pdf", "Drum_and_Percussion_Notation");
echo "</ul>\n";
echo "</td></tr>\n";

show_row(['Makefile', 'README.md', 'config.lyi']);
show_row(['defs.lyi', 'outline.lyi', 'part.lyi']);

echo "</td></tr></table>\n";
echo "<ul>\n";
show_link("Heliotrope_Bouquet.mp4", "Heliotrope_Bouquet.mp4");
show_link("heliotrope_bouquet.pdf", "heliotrope_bouquet.pdf");
show_link("../Percussion_Key.pdf", "Percussion_Key.pdf");
echo "</ul>\n";
echo "</td><td>\n";
echo "<table border=1>\n";

show_grid($insts, ['.ly', '.lyi', '.pdf']);

echo "</td></tr></table>\n";
echo "</table>\n";
