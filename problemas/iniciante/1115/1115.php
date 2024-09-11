<?php
$entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
$x = $entrada[0];
$y = $entrada[1];
while($x != 0 && $y != 0){
    if($x > 0){
        if($y > 0){
            echo "primeiro" . PHP_EOL;
        }else{
            echo "quarto" . PHP_EOL;
        }
    }else{
        if($y > 0){
            echo "segundo" . PHP_EOL;
        }else{
            echo "terceiro" . PHP_EOL;
        }
    }
    
    $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $x = $entrada[0];
    $y = $entrada[1];
}
?>