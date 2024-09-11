<?php
$entrada = trim(fgets(STDIN));
sscanf($entrada, "%d", $n);
$n -= $n % 2;

for($i = 2; $i <= $n; $i+=2){
    echo $i . "^2 = " . ($i * $i) . PHP_EOL;
}
?>