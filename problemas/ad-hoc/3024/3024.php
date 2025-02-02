<?php
$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
$n = $numeros[0];
$x = $numeros[1];

$alturas = array_map('intval', explode(" ", trim(fgets(STDIN))));

$resposta = 1;
$acumulado = 1;
for ($i = 1; $i < $n; $i++) {
    if ($alturas[$i] - $alturas[$i - 1] <= $x) {
        $acumulado += 1;
    } else {
        $resposta = max($resposta, $acumulado);
        $acumulado = 1;
    }
}
$resposta = max($resposta, $acumulado);

echo $resposta . PHP_EOL;
