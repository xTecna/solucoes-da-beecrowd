<?php
while (true) {
    $n = trim(fgets(STDIN));
    if ($n == 0) {
        break;
    }

    $resposta = "";
    $menor_ano = 9999;
    for ($i = 0; $i < $n; $i++) {
        $partes = explode(" ", trim(fgets(STDIN)));
        $planeta = $partes[0];
        $ano = intval($partes[1]) - intval($partes[2]);

        if ($ano < $menor_ano) {
            $menor_ano = $ano;
            $resposta = $planeta;
        }
    }

    echo $resposta . PHP_EOL;
}
