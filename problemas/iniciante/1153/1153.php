<?php
$F = array_fill(0, 14, -1);
$F[1] = 1;

function fatorial($n) {
    global $F;
    
    if($F[$n] == -1){
        $F[$n] = $n * fatorial($n - 1);
    }
    return $F[$n];
}

$n = trim(fgets(STDIN));
echo fatorial($n) . PHP_EOL;
?>