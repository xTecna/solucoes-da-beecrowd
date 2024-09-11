<?php
$x = trim(fgets(STDIN));
$y = trim(fgets(STDIN));

if($x > $y){
    $temp = $x;
    $x = $y;
    $y = $temp;
}

$soma = 0;
for($i = $x; $i <= $y; $i++){
    if($i % 13 != 0){
        $soma += $i;
    }
}

echo $soma . PHP_EOL;
?>