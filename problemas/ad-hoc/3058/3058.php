<?php
$N = trim(fgets(STDIN));

$menor_preco = 1000.0;
for ($i = 0; $i < $N; $i++) {
    $numeros = array_map('floatval', explode(" ", trim(fgets(STDIN))));
    $P = $numeros[0];
    $G = $numeros[1];

    $menor_preco = min($menor_preco, $P / $G);
}

echo number_format(1000 * $menor_preco, 2, '.', '') . PHP_EOL;
