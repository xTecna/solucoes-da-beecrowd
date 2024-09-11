<?php
$pares = 0;

for($i = 0; $i < 5; $i++){
    $entrada = trim(fgets(STDIN));
    sscanf($entrada, "%d", $numero);

    if($numero % 2 == 0){
        $pares += 1;
    }
}

echo $pares . " valores pares" . PHP_EOL;
?>