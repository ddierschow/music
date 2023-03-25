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
	echo "</tr>\n";
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

echo "<table border=1>\n";

ShowGrid(['Score', 'ScoreCond', 'ScoreNT'], ['.ly', '.midi', '.pdf']);
ShowGrid($insts, ['.ly', '.lyi', '.pdf']);
ShowRow(['README.md', 'config.lyi', 'defs.lyi']);
ShowRow(['outline.lyi', 'part.lyi', '']);

echo "</table>\n";
