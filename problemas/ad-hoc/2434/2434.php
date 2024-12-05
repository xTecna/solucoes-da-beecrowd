<?php
$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
$n = $numeros[0];
$saldo = $numeros[1];

$resposta = $saldo;
for ($i = 0; $i < $n; $i++) {
    $movimentacao = trim(fgets(STDIN));
    $saldo += $movimentacao;

    $resposta = min($resposta, $saldo);
}

echo $resposta . PHP_EOL;
