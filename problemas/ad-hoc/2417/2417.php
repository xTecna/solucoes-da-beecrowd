<?php
$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
$cv = $numeros[0];
$ce = $numeros[1];
$cs = $numeros[2];
$fv = $numeros[3];
$fe = $numeros[4];
$fs = $numeros[5];

$cp = 10000 * (3 * $cv + $ce) + $cs;
$fp = 10000 * (3 * $fv + $fe) + $fs;

if ($cp > $fp) {
    echo 'C' . PHP_EOL;
} else if ($fp > $cp) {
    echo 'F' . PHP_EOL;
} else {
    echo '=' . PHP_EOL;
}
