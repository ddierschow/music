<?php
include "../common/helpers.php";

show_top();

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "SopranoSax", "AltoSax1", "AltoSax2", "TenorSax", "BariSax",   // how saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2",
    "Trombone1", "Trombone2", "Trombone3", "Baritone", "BaritoneTC", "Tuba",
    "StringBass", "Percussion1", "Percussion2", "MalletPercussion", "Timpani",
];

echo "<table><tr>\n";

echo "<td>\n";
show_left_box("santa claus is comin' to town", ['Score', 'ScoreCond', 'ScoreNT'], ['ScoreMidi.mp3'],
              [["https://en.wikipedia.org/wiki/Santa_Claus_Is_Comin%27_to_Town", "Wiki page"],
               ["http://phrogz.net/tmp/Sing/SantaClausisComintoTown.pdf", "original song"],
               ["https://www.youtube.com/watch?v=qrNMYDPYY0E", "Springsteen's version"]]);
echo "</td>\n";

echo "<td>\n";
show_parts($parts, 1, 'parts/');
echo "</td>";

echo "<td>\n";
show_image();
echo "<h4>To do</h4><ul>\n";
echo "<li>Write a timpani part\n";
echo "<li>Write a condensed score (someday?)\n";
echo "</ul>\n";

echo "</td></tr></table>\n";

show_bottom();
?>
