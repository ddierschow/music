<?php
include "../common/helpers.php";

$songs = ['Cathedrals', 'Edward', 'Starship And Haiku', 'Velveteen'];

function show_songs($names, $style=0) {
    foreach ($names as $name) {
        show_song($name, $style);
        $style = 1 - $style;
    }
}

function show_song($name, $style=0) {
    $fn = str_replace(' ', '', $name);
    show_row(['<b>' . $name . '</b>', $fn . '-MHB-CT.pdf', $fn . '-SATB-CT.pdf'], $style, 1, 1);
    show_row(['.tly', '-MHB-FT.pdf', '-SATB-FT.pdf'], 1-$style, 1, 0, $fn);
    show_row(['.lyi', '-MHB-BT.pdf', '-SATB-BT.pdf'], $style, 1, 0, $fn);
    show_row(['.midi', '-MHB-ET.pdf', '-SATB-ET.pdf'], 1-$style, 1, 0, $fn);
    show_row(['-GS.pdf', '-MHB-CB.pdf', '-SATB-CB.pdf'], $style, 1, 0, $fn);
    //show_row(['', $fn . '-MHB-CB.pdf', $fn . '-SATB-CB.pdf'], $style);
    show_audio($fn . '.mp3');
}

show_top();

$parts = ["CTreble", "FTreble", "BesTreble", "EesTreble", "CBass"];

echo "<table border=0 width='100%'><tr>";

echo "<td valign=top width='360px'>\n";
echo "<table border=1 width='100%'>\n";
show_title("kathy mar songbook", "http://www.xocolatl.com/kathy/");
echo "<tr><td><center>";
show_image();
echo "</center></td></tr>\n";
show_description_cell();
show_common_links(
    [["https://www.xocolatl.com/kathy/songbook/", "dvd songbook"],
     ["example/", "examples"]]);
echo "</table>\n";
echo "<ul>\n";
echo "</ul>\n";
echo "<h4>To do</h4><ul>\n";
echo "<li>add guitar and percussion parts";
echo "<li>more songs!";
echo "</ul>\n";
echo "</td>\n";

echo "<td valign=top>\n";
echo "<table border=1 width='100%'>\n";
show_row(['Makefile', 'README.md', 'layout.lyi']);
show_row(['makesong.py', 'template.ly', ''], 1);
show_row(['ScoreMidi.lyi', 'ScoreMHB.lyi', 'ScoreSATB.lyi']);

show_row(['<b>Complete Songbook</b>', '<b>M/H/B PDFs</b>', '<b>SATB PDFs</b>'], 1, 1, 1);
show_row(['title-CT.php', 'Songbook-MHB-CT.pdf', 'Songbook-SATB-CT.pdf'], 0);
show_row(['title-FT.php', 'Songbook-MHB-FT.pdf', 'Songbook-SATB-FT.pdf'], 1);
show_row(['title-BT.php', 'Songbook-MHB-BT.pdf', 'Songbook-SATB-BT.pdf'], 0);
show_row(['title-ET.php', 'Songbook-MHB-ET.pdf', 'Songbook-SATB-ET.pdf'], 1);
show_row(['title-CB.php', 'Songbook-MHB-CB.pdf', 'Songbook-SATB-CB.pdf'], 0);
show_row(['<b>Sources and MIDIs</b>', '<b>M/H/B PDFs</b>', '<b>SATB PDFs</b>'], 1, 1, 1);
show_songs($songs);
echo "<tr><td class='theother' colspan=3><center><b>In Progress<b></center></td></tr>\n";
show_songs(['DrinkUpTheRiver']);
echo "</table>\n";
echo "</td></tr></table>\n";

show_bottom();
?>
