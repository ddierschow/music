<?php
include "helpers.php";

show_top();
show_main_top("<h2>The Reference Shelf</h2><p><h4>Stuff that might be useful</h4>\n", '../image.png');

echo "<p><ul>\n";
show_link("http://lilypond.org/doc/v2.22/Documentation/notation-big-page.html", "LilyPond_--_Notation_Reference");
show_link("https://silverclefmusic.com/about-scores-for-band/", "Scores_for_Band");
show_link("https://www.orchestralibrary.com/reftables/rang.html", "Range_of_Instruments");
show_link("https://web.mit.edu/merolish/Public/drums.pdf", "Drum_and_Percussion_Notation");
show_link("../common/Percussion_Key.pdf", "Percussion_Key.pdf");
show_link("https://audio.online-convert.com/convert/midi-to-mp3", "Online-Convert MIDI to MP3");
show_link("https://github.com/kastdeur/lilydrum", "lilydrum");
show_link("https://www.all-guitar-chords.com/chords/identifier", "Guitar Chord Identifier");
show_link("https://simple.wikipedia.org/wiki/Tempo", "Tempo wiki page");
show_link("https://bandmusicpdf.org/", "Public Domain Band Music Library");
show_link("https://alantheisen.com/journal/issue1", "Ten Tips for Composing for Band");
echo "</ul>\n";
?>

</body></html>
