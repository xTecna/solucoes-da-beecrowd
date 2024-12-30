<?php
function imprimeTriangulo($tamanho, $deslocamento)
{
    $espacos = floor($tamanho / 2) + $deslocamento;
    $asteriscos = 1;

    while ($asteriscos <= $tamanho) {
        for ($i = 0; $i < $espacos; $i++) {
            echo " ";
        }
        for ($i = 0; $i < $asteriscos; $i++) {
            echo "*";
        }
        echo PHP_EOL;

        $espacos -= 1;
        $asteriscos += 2;
    }
}

while (!feof(STDIN)) {
    $linha = trim(fgets(STDIN));

    if (strlen($linha) > 0) {
        $n = intval($linha);

        imprimeTriangulo($n, 0);
        imprimeTriangulo(3, floor($n / 2) - 1);
        echo PHP_EOL;
    }
}
