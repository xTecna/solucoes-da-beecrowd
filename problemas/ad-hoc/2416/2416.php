<?php
$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
$c = $numeros[0];
$n = $numeros[1];

echo ($c % $n) . PHP_EOL;
?>