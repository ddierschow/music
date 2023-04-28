<?php

function show_file($fn)
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

function show_row($arr)
{
    echo " <tr>\n";
    foreach ($arr as $fn)
	show_file($fn);
    echo " </tr>\n";
}

function show_grid($prefs, $suffs)
{
    foreach ($prefs as $pref) {
	$arr = [];
	foreach ($suffs as $suff)
	    if ($pref == '' or $suff == '')
		$arr[] = '';
	    else
		$arr[] = $pref . $suff;
        show_row($arr);
    }
}

function show_link($link, $name)
{
    echo '<li><a href="' . $link . '">' . $name . "</a>\n";
}

?>
