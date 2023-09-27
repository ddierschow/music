<?php
include "../common/helpers.php";

show_top();

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "AltoSax1", "AltoSax2", "TenorSax", "BariSax",  // how saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2", "Trombone1", "Trombone2", "Trombone3",
    "Baritone", "BaritoneTC", "Tuba", "StringBass",
    "Percussion1", "Percussion2", "MalletPercussion1", "MalletPercussion2"
];

echo "<table border=0><tr><td valign=top>\n";
echo "<table border=1>\n";

echo "<tr><td colspan=3><center><h2>\n";
echo '<a href="https://en.wikipedia.org/wiki/Heliotrope_Bouquet">heliotrope bouquet</a>' . "\n";
echo "</h2></center></td></tr>\n";

show_grid(['Score', 'ScoreCond', 'ScoreNT'], ['.ly', '.', '.pdf']);
show_grid(['ScoreMidi'], ['.ly', '.midi', '.mp3']);

echo "<tr><td colspan=3>\n";
show_common_links();
echo "</td></tr>\n";

show_row(['Makefile', 'README.md', 'config.lyi']);
show_row(['../common/defs.lyi', 'outline.lyi', 'part.lyi']);

echo "</td></tr></table>\n";
echo "<ul>\n";
show_link("heliotrope_bouquet.pdf", "heliotrope_bouquet.pdf");
show_link("Heliotrope_Bouquet.mp4", "Heliotrope_Bouquet.mp4");
show_link("https://www.youtube.com/watch?v=E0mvRf7dvO0&pp=ygUSaGVsaW90cm9wZSBib3VxdWV0", "... on YouTube");
show_link("Percussion.pdf", "Mark's percussion part");
echo "</ul>\n";
echo "</td><td>\n";

show_parts($parts);

echo "</td><td valign=top><table border=0><tr><td>\n";
echo "<h4>To do</h4><ul>\n";
echo "<li>Write a condensed score (someday?)\n";
echo "</ul>\n";
echo "</td></tr></table>\n";

echo "</td></tr></table>\n";

show_bottom();
?>
