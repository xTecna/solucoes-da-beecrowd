<?php
$numeros = array_map('intval', explode(' ', trim(fgets(STDIN))));
$n = $numeros[0];
$x = $numeros[1];
$y = $numeros[2];

echo number_format($n / ($x + $y), 2, '.', '') . PHP_EOL;
?>