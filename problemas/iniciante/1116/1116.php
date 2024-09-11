<?php
$n = trim(fgets(STDIN));
for($i = 0; $i < $n; $i++){
    $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $x = $entrada[0];
    $y = $entrada[1];

    if($y == 0){
        echo "divisao impossivel" . PHP_EOL;
    }else{
        echo number_format($x / $y, 1, '.', '') . PHP_EOL;
    }
}
?>