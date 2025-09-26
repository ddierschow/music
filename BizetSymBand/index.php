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

echo "<table border=0><tr>";

echo "<td valign=top>\n";
echo "<table border=1>\n";
show_title("symphony number 1 in c<br>scherzo", "https://en.wikipedia.org/wiki/Symphony_in_C_(Bizet)");
show_description_cell();
show_grid(['Score', 'ScoreNT'], ['.ly', '.', '.pdf']);
show_grid(['ScoreMidi'], ['.ly', '.midi', '.mp3']);
show_audio('ScoreMidi.mp3');
show_common_links();
show_row(['Makefile', 'README.md']);
show_row(['allparts.lyi', 'config.lyi', '../common/defs.lyi'], 1);
show_row(['layout.lyi', 'outline.lyi', 'single.lyi']);
echo "</table>\n";
echo "<h4>To do</h4><ul>\n";
echo "<li>Completely revise this\n";
echo "</ul>\n";
echo "</td>";

echo "<td valign=top>\n";
show_parts($parts, 1, 'parts/');
echo "</td>";

echo "<td valign=top>\n";
show_image();
echo "</td></tr></table>\n";

echo "</td></tr></table>\n";

show_bottom();
?>
