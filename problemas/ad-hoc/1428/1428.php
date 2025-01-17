<?php
$t = trim(fgets(STDIN));

for ($i = 0; $i < $t; $i++) {
    $numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $n = $numeros[0];
    $m = $numeros[1];

    echo ceil(($n - 2) / 3.0) * ceil(($m - 2) / 3.0) . PHP_EOL;
}
