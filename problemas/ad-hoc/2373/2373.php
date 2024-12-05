<?php
$n = trim(fgets(STDIN));

$resposta = 0;
for ($i = 0; $i < $n; $i++) {
    $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $latas = $entrada[0];
    $copos = $entrada[1];

    if ($latas > $copos) {
        $resposta += $copos;
    }
}

echo $resposta . PHP_EOL;
