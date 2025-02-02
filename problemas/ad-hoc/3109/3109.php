<?php
$N = trim(fgets(STDIN));
$mesas = [];
for ($i = 0; $i <= $N; $i++) {
    array_push($mesas, $i);
}

$Q = trim(fgets(STDIN));
for ($i = 0; $i < $Q; $i++) {
    $numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $E = $numeros[0];
    $A = $numeros[1];

    if ($E == 1) {
        $B = $numeros[2];

        $temp = $mesas[$A];
        $mesas[$A] = $mesas[$B];
        $mesas[$B] = $temp;
    } else {
        $resposta = 0;
        $mesa = $mesas[$A];
        while ($mesa != $A) {
            $resposta += 1;
            $mesa = $mesas[$mesa];
        }

        echo $resposta . PHP_EOL;
    }
}
