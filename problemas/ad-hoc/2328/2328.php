<?php
$n = trim(fgets(STDIN));
$divisao = array_map('intval', explode(" ", trim(fgets(STDIN))));

$resposta = 0;
for ($i = 0; $i < $n; $i++) {
    $resposta += $divisao[$i];
}

echo ($resposta - $n) . PHP_EOL;
