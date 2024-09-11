<?php
$dentro = 0;
$fora = 0;

$n = trim(fgets(STDIN));
for($i = 0; $i < $n; $i++){
    $numero = trim(fgets(STDIN));

    if($numero >= 10 && $numero <= 20){
        $dentro += 1;
    }else{
        $fora += 1;
    }
}

echo $dentro . " in" . PHP_EOL;
echo $fora . " out" . PHP_EOL;
?>