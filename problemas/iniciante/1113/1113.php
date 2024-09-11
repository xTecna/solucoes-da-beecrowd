<?php
$entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
$x = $entrada[0];
$y = $entrada[1];

while($x != $y){
    if($x < $y){
        echo "Crescente" . PHP_EOL;
    }else{
        echo "Decrescente" . PHP_EOL;
    }

    $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $x = $entrada[0];
    $y = $entrada[1];
}
?>