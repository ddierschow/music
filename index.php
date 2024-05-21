<?php
include "common/helpers.php";
show_top();
echo "<center>\n<h2>Musical Works</h2>\n<h4>Dean Dierschow</h4>\n</center>\n";

$dirs = array();
if (is_dir(getcwd()))
{
    if ($dh = opendir(getcwd()))
    {
        while (($file = readdir($dh)) !== false)
	    if ($file != 'old' && !str_starts_with($file, '.') && filetype(getcwd() . '/' . $file) == 'dir')
		$dirs[] = $file;
        closedir($dh);
    }
}

sort($dirs);
echo "<table width=100%>\n";
$style = 0;
foreach ($dirs as $ent)
{
    echo " <tr class='" . $styles[$style] . "'>\n";
    echo "  <td><a href='" . $ent . "/'>";
    show_image($ent . '/image.png', '256');
    echo "</a></td>\n";
    echo "  <td><a href='" . $ent . "/'><h3>" . $ent . "</h3></a>";
    show_description($ent . '/description.txt');
    echo "  </td>\n";
    echo " </tr>\n";
    $style = 1 - $style;
}
echo "</table>\n\n";

show_bottom();
?>
