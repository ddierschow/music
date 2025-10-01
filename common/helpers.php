<?php

function show_top() {
    echo "<html><head>\n";
    echo "<style>\n";
    echo "body {background-color:#eee;}\n";
    echo "td {vertical-align: top;}\n";
    echo ".table {background-color:#eee; border: 1px solid black;}\n";
    echo ".table td {border: 1px solid gray;}\n";
    echo ".here {background-color:green; color:white; padding:8px;}\n";
    echo ".this {background-color:#fff;}\n";
    echo ".that {background-color:#efe;}\n";
    echo ".theother {background-color:#ffd;}\n";
    echo "a:link {color: #00f; text-decoration: none;}\n";
    echo "a:visited {color: #009; text-decoration: none;}\n";
    echo "a:active {color: #090; text-decoration: none;}\n";
    echo "a:hover {color: #009; text-decoration: underline;}\n";
    echo "</style>\n";
    echo "</head>\n";
    echo "<body>\n\n";
}

function show_left_box($title, $scores, $mp3s, $links=[], $extras=[]) {
    echo "<table class='table'>\n";
    show_title($title);
    show_description_cell();
    show_grid($scores, ['.ly', '.', '.pdf']);
    show_grid(['ScoreMidi'], ['.ly', '.midi', '.mp3'], count($scores) % 2);
    $style = 1 - (count($scores) % 2);
    foreach ($mp3s as $mp3) {
        show_audio($mp3, $style);
        $style = 1 - $style;
    }
    show_common_links($links);
    show_row(['Makefile', 'README.md', '../common/defs.lyi']);
    show_row(['allparts.lyi', 'config.lyi', 'layout.lyi'], 1);
    show_row(['outline.lyi', 'score.lyi', 'single.lyi']);
    echo "</table>\n";
    if ($extras) {
        echo "<ul>\n";
        foreach ($extras as $extra) {
            show_link($extra[0], $extra[1]);
        }
        echo "</ul>\n";
    }
}

function show_file($fn, $show_pdf=1, $show_missing=0) {
    echo '  <td>';
    if ($fn == '')
	echo "&nbsp;";
    else if (file_exists($fn))
	echo '<a href="' . $fn . '">' . $fn . "</a>";
    else if ((str_ends_with($fn, '.pdf') && $show_pdf) || $show_missing)
        echo $fn;
    else
        echo '&nbsp;';
    echo "</td>\n";
}

function show_audio($fn, $style=0) {
    if (file_exists($fn)) {
        $ft = 'audio/mp3';
        if (str_ends_with($fn, '.mp4'))
            $ft = 'video/mp4';
        echo " <tr><td colspan=3 class='" . style_class($style) . "'>\n";
        echo $fn . "<br>\n";
        echo '<audio controls><source src="' . $fn . '" type="' . $ft . '"></audio><br>' . "\n";
        echo " </td></tr>\n";
    }
}

function style_class($style=0) {
    $styles = [0 => 'this', 1 => 'that'];
    return $styles[$style];
}

function show_row($arr, $style=0, $show_pdf=1, $show_missing=0, $prefix='') {
    echo " <tr class='" . style_class($style) . "'>\n";
    foreach ($arr as $fn)
	show_file($prefix . $fn, $show_pdf, $show_missing);
    echo " </tr>\n";
}

function show_grid($prefs, $suffs, $style=0, $show_pdf=1, $dir='') {
    foreach ($prefs as $pref) {
	$arr = [];
	foreach ($suffs as $suff)
	    if ($pref == '' or $suff == '')
		$arr[] = '';
	    else if (str_ends_with($suff, '.lyi'))
		$arr[] = $dir . $pref . $suff;
	    else
		$arr[] = $pref . $suff;
        show_row($arr, $style, $show_pdf);
        $style = 1 - $style;
    }
}

function show_parts($parts, $show_pdf=1, $dir='') {
    echo "<table class='table'>\n";
    show_grid($parts, ['.ly', '.lyi', '.pdf'], 0, $show_pdf, $dir);
    echo "</table>\n";
}

function show_link($link, $name) {
    echo '<li><a href="' . $link . '">' . $name . "</a>\n";
}

function show_common_links($links=[]) {
    echo "<tr><td colspan=3 class='theother'>\n";
    echo "<p><center><h3>References</h3></center><ul>\n";
    show_link("../common/reference.php", "My References");
    foreach ($links as $link) {
        show_link($link[0], $link[1]);
    }
    echo "</ul>\n";
    echo "</td></tr>\n";
}

function show_bottom() {
    echo "</body>\n";
    echo "</html>\n";
}

function show_title($title, $link="") {
    echo "<tr><td colspan=3 class='here'><center><h2>\n";
    if ($link)
        echo '<a href="' . $link .  '">' . $title . "</a>\n";
    else
        echo $title . "\n";
    echo "</h2></center></td></tr>\n";
}

function show_image($img='image.png', $width='360') {
    if (file_exists($img))
        echo "<img src='" . $img . "' width='" . $width . "'>\n";
}

function show_description($fn='description.txt') {
    if (file_exists($fn))
        echo file_get_contents($fn);
}

function show_description_cell($fn='description.txt') {
    echo "<tr><td colspan=3 class='theother'>\n";
    show_description();
    echo "</td></tr>\n";
}

$styles = [0 => 'this', 1 => 'that'];

?>
