<?php
$entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
$n = $entrada[0];
$m = $entrada[1];

for ($i = 0; $i < $m; $i++) {
    $acao = trim(fgets(STDIN));

    if ($acao == "fechou") {
        $n += 1;
    } else {
        $n -= 1;
    }
}

echo $n . PHP_EOL;
