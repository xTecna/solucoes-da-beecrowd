<?php
$n = trim(fgets(STDIN));
for($i = 0; $i < $n; $i++){
    $x = 4 * $i + 1;
    echo $x . " " . ($x + 1) . " " . ($x + 2) . " PUM" . PHP_EOL;
}
?>