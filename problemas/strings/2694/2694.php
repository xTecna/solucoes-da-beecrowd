<?php
$N = trim(fgets(STDIN));
for ($i = 0; $i < $N; $i++) {
    $linha = trim(fgets(STDIN));
    $parte1 = intval(substr($linha, 2, 2));
    $parte2 = intval(substr($linha, 5, 3));
    $parte3 = intval(substr($linha, 11, 2));

    echo $parte1 + $parte2 + $parte3 . PHP_EOL;
}
