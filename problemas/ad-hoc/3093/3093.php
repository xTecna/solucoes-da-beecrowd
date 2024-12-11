<?php
$n = trim(fgets(STDIN));

for ($i = 0; $i < $n; $i++) {
    $cartas = trim(fgets(STDIN));

    if (strpos($cartas, 'A') !== false && strpos($cartas, 'K') !== false && strpos($cartas, 'Q') !== false && strpos($cartas, 'J') !== false) {
        echo 'Aaah muleke' . PHP_EOL;
    } else {
        echo 'Ooo raca viu' . PHP_EOL;
    }
}
