<?php

function ShowFile($fn)
{
    echo '  <td>';
    if ($fn == '')
	echo "&nbsp;";
    else if (file_exists($fn))
	echo '<a href="' . $fn . '">' . $fn . "</a>";
    else if (str_ends_with($fn, '.pdf'))
	echo $fn;
    else
        echo '&nbsp';
    echo "</td>\n";
}

function ShowRow($arr)
{
    echo " <tr>\n";
    foreach ($arr as $fn)
	ShowFile($fn);
    echo " </tr>\n";
}

function ShowGrid($prefs, $suffs)
{
    foreach ($prefs as $pref) {
	$arr = [];
	foreach ($suffs as $suff)
	    if ($pref == '' or $suff == '')
		$arr[] = '';
	    else
		$arr[] = $pref . $suff;
        ShowRow($arr);
    }
}

$insts = [
    "Flute1", "Flute2", "Oboe", "Bassoon",
    "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "AltoSax1", "AltoSax2", "TenorSax", "BariSax",  // how saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2",
    "Trombone1", "Trombone2", "Trombone3", "Baritone", "BaritoneTC",
    "StringBass", "Tuba",
    "Percussion1", "Percussion2", "MalletPercussion", "Timpani"
];

echo "<table border=0><tr><td>\n";
echo "<table border=1>\n";

echo "<tr><td colspan=3><center><h2>heliotrope bouquet</h2></center></td></tr>\n";

ShowGrid(['Score', 'ScoreCond', 'ScoreNT'], ['.ly', '.midi', '.pdf']);

echo "<tr><td colspan=3>\n";
echo "<p><ul>\n";
echo '<li><a href="http://lilypond.org/doc/v2.22/Documentation/notation-big-page.html"> LilyPond_--_Notation_Reference</a>' . "\n";
echo '<li><a href="https://silverclefmusic.com/about-scores-for-band/"> Scores_for_Band</a>' . "\n";
echo '<li><a href="https://www.orchestralibrary.com/reftables/rang.html"> Range_of_Instruments</a>' . "\n";
echo '<li><a href="https://web.mit.edu/merolish/Public/drums.pdf"> Drum_and_Percussion_Notation</a>' . "\n";
echo "</ul>\n";
echo "</td></tr>\n";

ShowRow(['Makefile', 'README.md', 'config.lyi']);
ShowRow(['defs.lyi', 'outline.lyi', 'part.lyi']);
ShowRow(['index.php', 'Heliotrope_Bouquet.mp4', 'heliotrope_bouquet.pdf']);

echo "</td></tr></table>\n";
echo "</td><td>\n";
echo "<table border=1>\n";

ShowGrid($insts, ['.ly', '.lyi', '.pdf']);

echo "</td></tr></table>\n";
echo "</table>\n";
