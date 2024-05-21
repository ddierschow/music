<?php
include "../common/helpers.php";

show_top();

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "AltoSax1", "AltoSax2", "TenorSax", "BariSax",  // how saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2", "Trombone1", "Trombone2", "Trombone3",
    "Baritone", "BaritoneTC", "Tuba", "StringBass",
    "Percussion1", "Percussion2", "MalletPercussion", "Timpani"
];

echo "<table border=0><tr><td valign=top>\n";
echo "<table border=1>\n";

echo "<tr><td colspan=3><center><h2>\n";
echo '<a href="https://en.wikipedia.org/wiki/Symphony_in_C_(Bizet)">symphony number 1 in c<br>scherzo</a>' . "\n";
echo "</h2></center></td></tr>\n";

show_grid(['Score', 'ScoreNT'], ['.ly', '.', '.pdf']);
show_grid(['ScoreMidi'], ['.ly', '.midi', '.mp3']);

echo "<tr><td colspan=3>\n";
show_common_links();
echo "</td></tr>\n";

show_row(['Makefile', 'README.md', 'config.lyi']);
show_row(['../common/defs.lyi', 'outline.lyi', 'part.lyi']);

echo "</td></tr></table>\n";
echo "<ul>\n";
echo "<li><a href='BizetSyphony1MvtIII.pdf'>Orchestral Score</a>\n";
echo "</ul>\n";
echo "</td><td>\n";

show_parts($parts);

echo "</td><td valign=top><table border=0><tr><td>\n";
echo "<img src='image.png'>\n";
echo "<ul>\n";
echo "</ul>\n";
echo "</td></tr></table>\n";

echo "</td></tr></table>\n";

show_bottom();
?>
