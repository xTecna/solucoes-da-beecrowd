<?php
$C = trim(fgets(STDIN));
$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));

$resposta = 0;
for ($i = 0; $i < $C; $i++) {
    $resposta += $numeros[$i];
}

echo $resposta . PHP_EOL;
