<?php
$numeros = array_map('intval', explode(' ', trim(fgets(STDIN))));
$r = $numeros[0];
$l = $numeros[1];

$pi = 3.1415;
$v = (4.0 * $pi * $r * $r * $r) / 3.0;

echo floor($l / $v) . PHP_EOL;
?>