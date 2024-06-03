<?php

function show_top() {
    echo "<html><head>\n";
    echo "<style>\n";
    echo ".this { background-color:#ffffff; }\n";
    echo ".that { background-color:#eeffee; }\n";
    echo "a:link {color: #0000FF; text-decoration: none;}\n";
    echo "a:visited {color: #000099; text-decoration: none;}\n";
    echo "a:active {color: #009900; text-decoration: none;}\n";
    echo "a:hover {color: #000099; text-decoration: underline;}\n";
    echo "</style>\n";
    echo "</head>\n";
    echo "<body>\n";
}

function show_file($fn, $show_pdf=1) {
    echo '  <td>';
    if ($fn == '')
	echo "&nbsp;";
    else if (file_exists($fn))
	echo '<a href="' . $fn . '">' . $fn . "</a>";
    else if (str_ends_with($fn, '.pdf') && $show_pdf)
        echo $fn;
    else
        echo '&nbsp;';
    echo "</td>\n";
}

function show_audio($fn) {
    if (file_exists($fn)) {
        $ft = 'audio/mp3';
        if (str_ends_with($fn, '.mp4'))
            $ft = 'video/mp4';
        echo " <tr><td colspan=3>\n";
        echo $fn . "<br>\n";
        echo '<audio controls><source src="' . $fn . '" type="' . $ft . '"></audio><br>' . "\n";
        echo " </td></tr>\n";
    }
}

function show_row($arr, $style=0, $show_pdf=1) {
    global $styles;
    echo " <tr class='" . $styles[$style] . "'>\n";
    foreach ($arr as $fn)
	show_file($fn, $show_pdf);
    echo " </tr>\n";
}

function show_grid($prefs, $suffs, $style=0, $show_pdf=1) {
    foreach ($prefs as $pref) {
	$arr = [];
	foreach ($suffs as $suff)
	    if ($pref == '' or $suff == '')
		$arr[] = '';
	    else
		$arr[] = $pref . $suff;
        show_row($arr, $style, $show_pdf);
        $style = 1 - $style;
    }
}

function show_parts($parts, $show_pdf=1) {
    echo "<table border=1>\n";
    show_grid($parts, ['.ly', '.lyi', '.pdf'], $show_pdf);
    echo "</table>\n";
}

function show_link($link, $name) {
    echo '<li><a href="' . $link . '">' . $name . "</a>\n";
}

function show_common_links() {
    echo "<tr><td colspan=3>\n";
    echo "<p><center><h3>References</h3></center><ul>\n";
    show_link("http://lilypond.org/doc/v2.22/Documentation/notation-big-page.html", "LilyPond_--_Notation_Reference");
    show_link("https://silverclefmusic.com/about-scores-for-band/", "Scores_for_Band");
    show_link("https://www.orchestralibrary.com/reftables/rang.html", "Range_of_Instruments");
    show_link("https://web.mit.edu/merolish/Public/drums.pdf", "Drum_and_Percussion_Notation");
    show_link("../common/Percussion_Key.pdf", "Percussion_Key.pdf");
    show_link("https://audio.online-convert.com/convert/midi-to-mp3", "Online-Convert MIDI to MP3");
    show_link("https://github.com/kastdeur/lilydrum", "lilydrum");
    echo "</ul>\n";
    echo "</td></tr>\n";
}

function show_bottom() {
    echo "</body>\n";
    echo "</html>\n";
}

function show_title($title, $link="") {
    echo "<tr><td colspan=3><center><h2>\n";
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
    echo "<tr><td colspan=3>\n";
    show_description();
    echo "</td></tr>\n";
}

$styles = [0 => 'this', 1 => 'that'];

?>
