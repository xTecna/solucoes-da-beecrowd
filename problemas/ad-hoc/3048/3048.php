<?php
$N = trim(fgets(STDIN));

$resposta = 0;
$anterior = -1;
for ($i = 0; $i < $N; $i++) {
    $atual = trim(fgets(STDIN));

    if ($atual != $anterior) {
        $anterior = $atual;
        $resposta += 1;
    }
}

echo $resposta . PHP_EOL;
