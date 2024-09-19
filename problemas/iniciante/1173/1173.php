<?php
$n = trim(fgets(STDIN));

for($i = 0; $i < 10; $i++){
    echo "N[" . $i . "] = " . $n . PHP_EOL;
    $n *= 2;
}
?>