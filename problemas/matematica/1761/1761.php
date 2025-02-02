<?php
$pi = 3.141592654;
while (!feof(STDIN)) {
    $linha = trim(fgets(STDIN));

    if (strlen($linha) > 0) {
        $numeros = array_map('floatval', explode(" ", trim($linha)));
        $a = $numeros[0];
        $b = $numeros[1];
        $c = $numeros[2];

        echo number_format(5.0 * (tan($a * $pi / 180.0) * $b + $c), 2, '.', '') . PHP_EOL;
    }
}
