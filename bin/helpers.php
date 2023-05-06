<?php

function show_top() {
    echo "<html><head>\n";
    echo "</head>\n";
    echo "<body>\n";
}

function show_file($fn) {
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

function show_row($arr) {
    echo " <tr>\n";
    foreach ($arr as $fn)
	show_file($fn);
    echo " </tr>\n";
}

function show_grid($prefs, $suffs) {
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

function show_parts($parts) {
    echo "<table border=1>\n";
    show_grid($parts, ['.ly', '.lyi', '.pdf']);
    echo "</td></tr></table>\n";
}

function show_link($link, $name) {
    echo '<li><a href="' . $link . '">' . $name . "</a>\n";
}

function show_common_links() {
    echo "<p><center><h3>References</h3></center><ul>\n";
    show_link("http://lilypond.org/doc/v2.22/Documentation/notation-big-page.html", "LilyPond_--_Notation_Reference");
    show_link("https://silverclefmusic.com/about-scores-for-band/", "Scores_for_Band</a");
    show_link("https://www.orchestralibrary.com/reftables/rang.html", "Range_of_Instruments");
    show_link("https://web.mit.edu/merolish/Public/drums.pdf", "Drum_and_Percussion_Notation");
    show_link("../Percussion_Key.pdf", "Percussion_Key.pdf");
    show_link("https://audio.online-convert.com/convert/midi-to-mp3", "Online-Convert MIDI to MP3");
    echo "</ul>\n";
}

function show_bottom() {
    echo "<body>\n";
    echo "</html>\n";
}

?>
