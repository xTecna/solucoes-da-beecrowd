<?php
$C = trim(fgets(STDIN));

for ($i = 0; $i < $C; ++$i) {
    $entrada = array_map("intval", explode(" ", trim(fgets(STDIN))));
    $B = $entrada[0];
    $E = $entrada[1];

    $resposta = "";
    for ($j = $B; $j <= $E; ++$j) {
        $resposta .= $j;
    }
    $resposta .= strrev($resposta);

    echo $resposta . PHP_EOL;
}
