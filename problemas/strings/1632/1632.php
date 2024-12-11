<?php
function variacoes($letra)
{
    if ($letra == 'A' || $letra == 'E' || $letra == 'I' || $letra == 'O' || $letra == 'S') {
        return 3;
    } else {
        return 2;
    }
}

$n = trim(fgets(STDIN));

for ($i = 0; $i < $n; $i++) {
    $senha = strtoupper(trim(fgets(STDIN)));

    $resposta = 1;
    for ($j = 0; $j < strlen($senha); $j++) {
        $resposta *= variacoes($senha[$j]);
    }
    echo $resposta . PHP_EOL;
}
