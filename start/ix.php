<?php
include "../common/helpers.php";

show_top();

$parts = [
@blob@
];

echo "<table border=0><tr><td valign=top>\n";
echo "<table border=1>\n";

echo "<tr><td colspan=3><center><h2>\n";
echo "work title\n";
echo "</h2></center></td></tr>\n";

show_grid(['Score', 'ScoreCond', 'ScoreNT'], ['.ly', '.', '.pdf']);
show_grid(['ScoreMidi'], ['.ly', '.midi', '.mp3']);

echo "<tr><td colspan=3>\n";
show_common_links();
echo "</td></tr>\n";

show_row(['Makefile', 'README.md', 'config.lyi']);
show_row(['../common/defs.lyi', 'outline.lyi', 'part.lyi']);

echo "</td></tr></table>\n";
echo "<ul>\n";
echo "</ul>\n";
echo "</td><td valign=top>\n";

show_parts($parts);

echo "</td><td valign=top><table border=0><tr><td>\n";
echo "<h4>To do</h4><ul>\n";
echo "</ul>\n";
echo "</td></tr></table>\n";

echo "</td></tr></table>\n";

show_bottom();
?>
