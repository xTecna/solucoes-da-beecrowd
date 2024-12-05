<?php
$n = trim(fgets(STDIN));

$resposta = 0;
for ($i = 0; $i < $n; $i++) {
    $numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $resposta += $numeros[0] * $numeros[1];
}
echo $resposta . PHP_EOL;
