<?php
function somaPA($a1, $an, $n)
{
    return ($n * ($a1 + $an)) / 2;
}

$t = trim(fgets(STDIN));

for ($i = 0; $i < $t; $i++) {
    $n = trim(fgets(STDIN));
    echo (somaPA(1, $n, $n) + 1) . PHP_EOL;
}
