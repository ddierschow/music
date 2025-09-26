<?php
include "../common/helpers.php";

show_top();

$parts = [
    "Flute1", "Flute2", "Oboe", "Bassoon", "Clarinet1", "Clarinet2", "Clarinet3", "BassClarinet",
    "SopranoSax", "AltoSax1", "AltoSax2", "TenorSax", "BariSax",  // how saxist
    "Trumpet1", "Trumpet2", "Trumpet3", "Horn1", "Horn2", "Trombone1", "Trombone2", "Trombone3",
    "Baritone", "BaritoneTC", "Tuba", "StringBass",
    "Percussion1", "Percussion2", "Mallets1", "Mallets2"
];

show_whole_page("heliotrope bouquet", ['Score', 'ScoreNT'], $parts, ['ScoreMidi.mp3'],
                [["https://www.youtube.com/watch?v=E0mvRf7dvO0&pp=ygUSaGVsaW90cm9wZSBib3VxdWV0", "on YouTube"]], [],
                ['write a condensed score (someday?)']);

show_bottom();
?>
