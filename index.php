<?php
include "common/helpers.php";
show_top();
echo "<div class='here'>\n";
echo "<img src='image.png' style='float: left; width: 96px;'>\n";
echo "<img src='image.png' style='float: right; width: 96px;'>\n";
echo "<center><h2>Musical Works</h2>\n<h4>Dean Dierschow</h4>\n</center>\n</div>\n";

$dirs = array();
if (is_dir(getcwd()))
{
    if ($dh = opendir(getcwd()))
    {
        while (($file = readdir($dh)) !== false)
	    if ($file[0] < 'a' && !str_starts_with($file, '.') && filetype(getcwd() . '/' . $file) == 'dir')
		$dirs[] = $file;
        closedir($dh);
    }
}
$collen = intdiv(count($dirs) + 1, 2);

sort($dirs);
echo "<table width=100%><tr><td width=50% style='vertical-align: top;'>\n";
echo "<table width=100%>\n";
$count = $style = 0;
foreach ($dirs as $ent)
{
    echo " <tr class='" . style_class($style) . "'>\n";
    echo "  <td><a href='" . $ent . "/'>";
    show_image($ent . '/image.png', '200');
    echo "</a></td>\n";
    echo "  <td><a href='" . $ent . "/'><h3>" . $ent . "</h3></a>";
    show_description($ent . '/description.txt');
    echo "  </td>\n";
    echo " </tr>\n";
    $style = 1 - $style;
    $count = $count + 1;
    if ($count == $collen) {
        echo "</table></td>\n";
        echo "<td width=50% style='vertical-align: top;'><table width=100%>\n";
    }
}
echo "</table></td></tr>\n";
echo "<tr><td class='theother' colspan=2><a href='common/construction.php'>Some notes on how these files are constructed</a></td></tr>\n";
echo "<tr><td class='theother' colspan=2><a href='common/reference.php'>My reference shelf</a></td></tr>\n";
echo "</table>\n\n";

show_bottom();
?>
