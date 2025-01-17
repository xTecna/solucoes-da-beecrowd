<?php
while (true) {
    $numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $a = $numeros[0];
    $b = $numeros[1];

    if ($a == 0 && $b == 0) {
        break;
    }

    echo (2 * $a - $b) . PHP_EOL;
}
