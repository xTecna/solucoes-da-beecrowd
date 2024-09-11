<?php
$entrada = trim(fgets(STDIN));
sscanf($entrada, "%lf %lf", $x1, $y1);

$entrada = trim(fgets(STDIN));
sscanf($entrada, "%lf %lf", $x2, $y2);

echo number_format(sqrt((($x2 - $x1) * ($x2 - $x1)) + (($y2 - $y1) * ($y2 - $y1))), 4, '.', ''  
