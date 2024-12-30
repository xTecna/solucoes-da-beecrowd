<?php
$n = trim(fgets(STDIN));
$numeros = explode(' ', trim(fgets(STDIN)));

$resposta = '';
for ($i = 0; $i < $n; $i++) {
    $resposta = $resposta . chr(hexdec($numeros[$i]));
}

echo $resposta . PHP_EOL;
