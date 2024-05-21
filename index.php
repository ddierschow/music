<center>
<h2>Musical Works</h2>
<h4>Dean Dierschow</h4>
</center>
<?php

function show_ents($ents)
{
    sort($ents);
    echo "<table width=100%>\n";
    foreach ($ents as $ent)
    {
        echo " <tr>\n";
        echo "  <td><a href='" . $ent . "/'>";
        if (file_exists($ent . '/image.png'))
            echo "  <img src='" . $ent . "/image.png' width='256'>\n";
        echo "</a></td>\n";
        echo "  <td><a href='" . $ent . "/'>" . $ent . "</a>";
        if (file_exists($ent . '/description.txt'))
            echo "  <br><br>" . file_get_contents($ent . '/description.txt');
        echo "  </td>\n";
        echo " </tr>\n";
    }
    echo "</table>\n\n";
}


$dirs = array();
$oths = array();
if (is_dir(getcwd()))
{
    if ($dh = opendir(getcwd()))
    {
        while (($file = readdir($dh)) !== false)
	{
            if ($file == 'old')
                continue;
	    if (!str_starts_with($file, '.') && filetype(getcwd() . '/' . $file) == 'dir')
		$dirs[] = $file;
        }
        closedir($dh);
    }
}

show_ents($dirs);
?>
