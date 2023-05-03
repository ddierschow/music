<?php
include "../bin/helpers.php";

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "AltoSax1", "AltoSax2", "TenorSax", "BariSax",  // how saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2", "Trombone1", "Trombone2", "Trombone3",
    "Baritone", "BaritoneTC", "Tuba", "StringBass",
    "Percussion1", "Percussion2", "MalletPercussion", "Timpani"
];

echo "<table border=0><tr><td valign=top>\n";
echo "<table border=1>\n";

echo "<tr><td colspan=3><center><h2>heliotrope bouquet</h2></center></td></tr>\n";

show_grid(['Score', 'ScoreCond', 'ScoreNT'], ['.ly', '.', '.pdf']);
show_grid(['ScoreMidi'], ['.ly', '.midi', '.mp3']);

echo "<tr><td colspan=3>\n";
show_common_links();
echo "</td></tr>\n";

show_row(['Makefile', 'README.md', 'config.lyi']);
show_row(['defs.lyi', 'outline.lyi', 'part.lyi']);

echo "</td></tr></table>\n";
echo "<ul>\n";
show_link("Heliotrope_Bouquet.mp4", "Heliotrope_Bouquet.mp4");
show_link("heliotrope_bouquet.pdf", "heliotrope_bouquet.pdf");
echo "</ul>\n";
echo "</td><td>\n";

show_parts($parts);

echo "</table>\n";
?>
