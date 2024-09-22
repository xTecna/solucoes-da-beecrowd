<?php
$entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
$ca = $entrada[0];
$ba = $entrada[1];
$pa = $entrada[2];

$entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
$cr = $entrada[0];
$br = $entrada[1];
$pr = $entrada[2];

echo (max($cr - $ca, 0) + max($br - $ba, 0) + max($pr - $pa, 0)) . PHP_EOL;
?>