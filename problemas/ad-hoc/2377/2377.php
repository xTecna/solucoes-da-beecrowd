<?php
$entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
$l = $entrada[0];
$d = $entrada[1];

$entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
$k = $entrada[0];
$p = $entrada[1];

echo ($k * $l + $p * floor($l / $d)) . PHP_EOL;
