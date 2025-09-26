<?php
include "../common/helpers.php";

show_top();

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "AltoSax1", "AltoSax2", "TenorSax", "BariSax",  // how saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2",
    "Trombone1", "Trombone2", "Trombone3", "Baritone", "BaritoneTC", "Tuba", "StringBass",
    "Percussion1", "Percussion2", "MalletPercussion", "Timpani"
];

echo "<table><tr><td>\n";

echo "<td>\n";
show_left_box("symphony number 1 in c<br>scherzo", ['Score', 'ScoreNT'], ['ScoreMidi.mp3'],
              [["https://en.wikipedia.org/wiki/Symphony_in_C_(Bizet)", "Wiki page"]]);
echo "<h4>To do</h4><ul>\n";
echo "<li>Completely revise this\n";
echo "</ul>\n";
echo "</td>\n";

echo "<td>\n";
show_parts($parts, 1, 'parts/');
echo "</td>";

echo "<td>\n";
show_image();
echo "</td></tr></table>\n";

echo "</td></tr></table>\n";

show_bottom();
?>
