<?php
$diametro = trim(fgets(STDIN));

$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
$altura = $numeros[0];
$largura = $numeros[1];
$profundidade = $numeros[2];

if ($diametro <= $altura && $diametro <= $largura && $diametro <= $profundidade) {
    echo "S" . PHP_EOL;
} else {
    echo "N" . PHP_EOL;
}
