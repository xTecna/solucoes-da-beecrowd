<?php
$k = 1;
while (TRUE) {
    $N = trim(fgets(STDIN));

    if ($N == 0) {
        break;
    }

    $numeros = array_map('intval', explode(' ', trim(fgets(STDIN))));

    $resposta = -1;
    for ($i = 0; $i < $N; $i++) {
        if ($numeros[$i] == $i + 1) {
            $resposta = $i + 1;
        }
    }

    echo 'Teste ' . $k . PHP_EOL;
    echo $resposta . PHP_EOL;
    echo PHP_EOL;

    $k += 1;
}
