<?php
include "../common/helpers.php";

show_top();

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "SopranoSax", "AltoSax1", "AltoSax2", "TenorSax", "BariSax",   # saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2",
    "Trombone1", "Trombone2", "Trombone3", "Baritone", "BaritoneTC", "Tuba",
    "StringBass", "Percussion1", "Percussion2", "MalletPercussion"
];

echo "<table border=0><tr><td valign=top>\n";
echo "<table border=1>\n";

echo "<tr><td colspan=3><center><h2>\n";
echo '<a href="https://en.wikipedia.org/wiki/Santa_Claus_Is_Comin%27_to_Town">';
echo "santa claus is comin' to town</a>\n";
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
show_link("http://phrogz.net/tmp/Sing/SantaClausisComintoTown.pdf", "original song");
show_link("https://www.youtube.com/watch?v=qrNMYDPYY0E", "Springsteen's version");
echo "</ul>\n";
echo "</td><td valign=top>\n";

show_parts($parts);

echo "</td><td valign=top><table border=0><tr><td>\n";
echo "<img src='image.png'>\n";
echo "<h4>To do</h4><ul>\n";
echo "<li>print it";
echo "<li>play it";
echo "</ul>\n";
echo "</td></tr></table>\n";

echo "</td></tr></table>\n";

show_bottom();
?>
