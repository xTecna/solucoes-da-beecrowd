<?php
$notas = [];

while(count($notas) != 2){
    $nota = trim(fgets(STDIN));
    if($nota >= 0.0 && $nota <= 10.0){
        $notas[] = $nota;
    }else{
        echo "nota invalida" . PHP_EOL;
    }
}

echo "media = " . number_format(($notas[0] + $notas[1])/2, 2, '.', '') . PHP_EOL;
?>