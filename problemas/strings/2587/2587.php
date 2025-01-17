<?php
$N = trim(fgets(STDIN));

for ($i = 0; $i < $N; $i++) {
    $palavra1 = trim(fgets(STDIN));
    $palavra2 = trim(fgets(STDIN));
    $secreta = trim(fgets(STDIN));

    $pos1 = strpos($secreta, "_");
    $pos2 = strpos($secreta, "_", $pos1 + 1);

    if ($palavra1[$pos1] == $palavra2[$pos2] || $palavra1[$pos2] == $palavra2[$pos1]) {
        echo 'Y' . PHP_EOL;
    } else {
        echo 'N' . PHP_EOL;
    }
}
