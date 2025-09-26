<?php
include "../common/helpers.php";

show_top();

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "AltoSax1", "AltoSax2", "TenorSax", "BariSax",  // how saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2",
    "Trombone1", "Trombone2", "Trombone3", "Baritone", "BaritoneTC", "Tuba", "StringBass",
    "Percussion1", "Percussion2", "MalletPercussion", "Timpani"
];

show_whole_page("symphony number 1 in c<br>scherzo", ['Score', 'ScoreNT'], $parts, ['ScoreMidi.mp3'],
                [["https://en.wikipedia.org/wiki/Symphony_in_C_(Bizet)", "Wiki page"]], [],
                ['completely revise this']);

show_bottom();
?>
