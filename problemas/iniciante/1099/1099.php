<?php
function quantidadeImpares($a, $b){
    return ($b - $a)/2 + 1;
}

function somaPA($a1, $an, $n){
    return (($a1 + $an) * $n)/2;
}

$n = trim(fgets(STDIN));
for($i = 0; $i < $n; $i++){
    $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $x = $entrada[0];
    $y = $entrada[1];
    
    if($x > $y){
        $temp = $x;
        $x = $y;
        $y = $temp;
    }
    
    $x += (abs($x) % 2) + 1;
    $y -= (abs($y) % 2) + 1;
    
    if($x > $y){
        echo "0" . PHP_EOL;
    }else{
        echo somaPA($x, $y, quantidadeImpares($x, $y)) . PHP_EOL;
    }
}
?>