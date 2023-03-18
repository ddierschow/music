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
$scores[] = "ScoreMvtI";
$scores[] = "ScoreMvtII";
$scores[] = "ScoreMvtIII";
$scores[] = "ScoreMvtIV";

$ftypes = array();
$ftypes[] = ".ly";
$ftypes[] = ".pdf";
$ftypes[] = ".midi";

ShowGridH($scores, $ftypes);

$insts = array();
$insts[] = "Flute1";
$insts[] = "Flute2";
$insts[] = "Oboe1";
$insts[] = "Oboe2";
$insts[] = "Clarinet1";
$insts[] = "Clarinet2";
$insts[] = "Bassoon1";
$insts[] = "Bassoon2";
$insts[] = "Horn1";
$insts[] = "Horn2";
$insts[] = "Horn3";
$insts[] = "Horn4";
$insts[] = "Trumpet1";
$insts[] = "Trumpet2";
$insts[] = "Timpani";
$insts[] = "Violin1";
$insts[] = "Violin2";
$insts[] = "Viola";
$insts[] = "Cello";
$insts[] = "Bass";

$fils = array();
$fils[] = ".ly";
$fils[] = "MvtI.lyi";
$fils[] = "MvtII.lyi";
$fils[] = "MvtIII.lyi";
$fils[] = "MvtIV.lyi";
$fils[] = ".pdf";

ShowGridV($insts, $fils);

$others = array();
$others[] = "README";
$others[] = "defs.lyi";
$others[] = "Part.lyi";

ShowRow($others);

echo "</table>\n";
