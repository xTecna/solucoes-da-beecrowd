<?php
$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));

$maior = $numeros[0];
for ($i = 1; $i < sizeof($numeros); $i++) {
    $maior = max($maior, $numeros[$i]);
}

echo $maior . PHP_EOL;
