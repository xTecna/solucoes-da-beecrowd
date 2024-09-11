<?php
$x = trim(fgets(STDIN));
$x += 1 - ($x % 2);

for($i = 0; $i < 6; $i++){
    echo $x + (2 * $i) . PHP_EOL;
}
?>