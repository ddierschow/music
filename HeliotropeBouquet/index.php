<?php
include "../common/helpers.php";

show_top();

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "SopranoSax", "AltoSax1", "AltoSax2", "TenorSax", "BariSax",  // how saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2", "Trombone1", "Trombone2", "Trombone3",
    "Baritone", "BaritoneTC", "Tuba", "StringBass",
    "Percussion1", "Percussion2", "Mallets1", "Mallets2"
];

echo "<table><tr>";

echo "<td>\n";
show_left_box("heliotrope bouquet", ['Score', 'ScoreNT'], ['ScoreMidi.mp3'],
              [["https://www.youtube.com/watch?v=E0mvRf7dvO0&pp=ygUSaGVsaW90cm9wZSBib3VxdWV0", "on YouTube"]]);
echo "</td>";

echo "<td>\n";
show_parts($parts, 1, 'parts/');
echo "</td>\n";

echo "<td>\n";
show_image();
echo "<h4>To do</h4><ul>\n";
echo "<li>Write a condensed score (someday?)\n";
echo "</ul>\n";

echo "</td></tr></table>\n";

show_bottom();
?>
