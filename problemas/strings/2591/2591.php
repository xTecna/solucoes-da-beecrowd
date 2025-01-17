<?php
$N = trim(fgets(STDIN));

for ($i = 0; $i < $N; $i++) {
    $hamekame = trim(fgets(STDIN));
    $matches = [];
    preg_match_all("/a+/", $hamekame, $matches);

    $tamanho1 = strlen($matches[0][0]);
    $tamanho2 = strlen($matches[0][1]);

    echo 'k';
    for ($j = 0; $j < $tamanho1 * $tamanho2; $j++) {
        echo 'a';
    }
    echo PHP_EOL;
}
