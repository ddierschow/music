<?php
include "../common/helpers.php";

show_top();

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "AltoSax1", "AltoSax2", "TenorSax", "BariSax",
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2",
    "Trombone1", "Trombone2", "Trombone3", "Baritone", "BaritoneTC", "Tuba",
    "StringBass", "Mallets", "Timpani"
];

show_whole_page("lo how a rose e'er blooming", ['Score', 'ScoreNT', 'ScoreSATB'], $parts,
                ['ScoreMidi.mp3', 'First_Reading.mp3', 'Second_Reading.mp3', 'Third_Reading.mp3'],
                [['https://en.wikipedia.org/wiki/Es_ist_ein_Ros_entsprungen', 'Wiki page'],
                 ['https://www.vandagriff.org/wp-content/uploads/2018/08/lo-how-a-rose.jpg', 'Hymnal 1'],
                 ['https://hymnary.org/page/fetch/WAR2003/205/low/190', 'Hymnal 2']], [],
                ['write a condensed score (someday?)']);

show_bottom();
?>
