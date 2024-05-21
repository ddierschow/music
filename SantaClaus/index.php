<?php
include "../common/helpers.php";

show_top();

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "SopranoSax", "AltoSax1", "AltoSax2", "TenorSax", "BariSax",   // how saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2",
    "Trombone1", "Trombone2", "Trombone3", "Baritone", "BaritoneTC", "Tuba",
    "StringBass", "Percussion1", "Percussion2", "MalletPercussion"
];

echo "<table border=0><tr>";

echo "<td valign=top>\n";
echo "<table border=1>\n";
show_title("santa claus is comin' to town", "https://en.wikipedia.org/wiki/Santa_Claus_Is_Comin%27_to_Town");
show_description_cell();
show_grid(['Score', 'ScoreCond', 'ScoreNT'], ['.ly', '.', '.pdf']);
show_grid(['ScoreMidi'], ['.ly', '.midi', '.mp3'], 1);
show_audio('ScoreMidi.mp3');
show_common_links();
show_row(['Makefile', 'README.md']);
show_row(['allparts.lyi', 'config.lyi', '../common/defs.lyi'], 1);
show_row(['layout.lyi', 'outline.lyi', 'part.lyi']);
echo "</table>\n";
echo "<ul>\n";
show_link("http://phrogz.net/tmp/Sing/SantaClausisComintoTown.pdf", "original song");
show_link("https://www.youtube.com/watch?v=qrNMYDPYY0E", "Springsteen's version");
echo "</ul>\n";
echo "</td>\n";

echo "<td valign=top>\n";
show_parts($parts);
echo "</td>";

echo "<td valign=top>\n";
show_image();
echo "<h4>To do</h4><ul>\n";
echo "<li>Print it";
echo "<li>Play it";
echo "<li>Write a condensed score (someday?)\n";
echo "</ul>\n";

echo "</td></tr></table>\n";

show_bottom();
?>
