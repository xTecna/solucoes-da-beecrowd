<?php
function mdc($a, $b)
{
    if ($b == 0) {
        return $a;
    }
    return mdc($b, $a % $b);
}

while (!feof(STDIN)) {
    $linha = trim(fgets(STDIN));

    if (strlen($linha) > 0) {
        $numeros = array_map("intval", explode(" ", $linha));
        $x = $numeros[0];
        $y = $numeros[1];

        echo ((2 * ($x + $y)) / mdc($x, $y)) . PHP_EOL;
    }
}
