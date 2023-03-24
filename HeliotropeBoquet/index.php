<?php

function ShowFile($fn)
{
    echo '  <td>';
    if ($fn == '')
	echo "&nbsp;";
    else if (file_exists($fn))
	echo '<a href="' . $fn . '">' . $fn . "</a>";
    else
	echo $fn;
    echo "</td>\n";
}

function ShowRow($arr)
{
    echo " <tr>\n";
    foreach ($arr as $fn)
	ShowFile($fn);
    echo " </tr>\n";
}

function ShowGridV($prefs, $suffs)
{
    foreach ($prefs as $pref) {
	echo "<tr>\n";
	foreach ($suffs as $suff)
	    if ($pref == '' or $suff == '')
		ShowFile('');
	    else
		ShowFile($pref . $suff);
	echo "</tr>\n";
    }
}

function ShowGridH($prefs, $suffs)
{
    foreach ($suffs as $suff) {
	echo "<tr>\n";
	foreach ($prefs as $pref)
	    if ($pref == '' or $suff == '')
		ShowFile('');
	    else
		ShowFile($pref . $suff);
	echo "</tr>\n";
    }
}

echo "<table border=1>\n";

$scores = array();
$scores[] = "";
$scores[] = "Score";
$scores[] = "ScoreNT";

$ftypes = array();
$ftypes[] = ".ly";
$ftypes[] = ".pdf";
$ftypes[] = ".midi";

ShowGridH($scores, $ftypes);

$insts[] = "Flute1";
$insts[] = "Flute2";
$insts[] = "Oboe";
$insts[] = "Bassoon";
$insts[] = "Clarinet1";
$insts[] = "Clarinet2";
$insts[] = "Clarinet3";
$insts[] = "BassClarinet";
$insts[] = "AltoSax1";
$insts[] = "AltoSax2";
$insts[] = "TenorSax";
$insts[] = "BariSax";
$insts[] = "Trumpet1";
$insts[] = "Trumpet2";
$insts[] = "Trumpet3";
$insts[] = "Horn1";
$insts[] = "Horn2";
$insts[] = "Trombone1";
$insts[] = "Trombone2";
$insts[] = "Trombone3";
$insts[] = "Baritone";
$insts[] = "BaritoneTC";
$insts[] = "StringBass";
$insts[] = "Tuba";
$insts[] = "Percussion1";
$insts[] = "Percussion2";
$insts[] = "MalletPercussion";
$insts[] = "Timpani";

$fils = array();
$fils[] = ".ly";
$fils[] = ".lyi";
$fils[] = ".pdf";

ShowGridV($insts, $fils);

$others = array();
$others[] = "README.md";
$others[] = "defs.lyi";
$others[] = "Outline.lyi";
$others[] = "Part.lyi";

ShowRow($others);

echo "</table>\n";
