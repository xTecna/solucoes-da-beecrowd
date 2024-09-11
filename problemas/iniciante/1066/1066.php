<?php
$pares = 0;
$impares = 0;
$positivos = 0;
$negativos = 0;

for($i = 0; $i < 5; $i++){
    $entrada = trim(fgets(STDIN));
    sscanf($entrada, "%d", $numero);

    if($numero % 2 == 0){
        $pares += 1;
    }else{
        $impares += 1;
    }

    if($numero > 0){
        $positivos += 1;
    }else if($numero < 0){
        $negativos += 1;
    }
}

echo $pares . " valor(es) par(es)" . PHP_EOL;
echo $impares . " valor(es) impar(es)" . PHP_EOL;
echo $positivos . " valor(es) positivo(s)" . PHP_EOL;
echo $negativos . " valor(es) negativo(s)" . PHP_EOL;
?>