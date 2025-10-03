<?php
include "../common/helpers.php";

show_top();

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "AltoSax1", "AltoSax2", "TenorSax", "BariSax",
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2",
    "Trombone1", "Trombone2", "Trombone3", "Baritone", "BaritoneTC", "Tuba",
    "StringBass", "Percussion1", "Percussion2", "MalletPercussion", "Timpani"
];

echo "<table><tr>\n";

echo "<td>\n";
show_left_box("lo how a rose e'er blooming", ['Score', 'ScoreNT'], ['ScoreMidi.mp3', 'First_Reading.mp3']);
echo "</td>\n";

echo "<td valign=top>\n";
show_parts($parts, 1, 'parts/');
echo "</td>";

echo "<td valign=top>\n";
show_image();
echo "<h4>To do</h4><ul>\n";
echo "<li>write a condensed score (someday?)";
echo "</ul>\n";

echo "</td></tr></table>\n";

show_bottom();
?>
