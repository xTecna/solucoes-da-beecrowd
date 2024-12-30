<?php
$m = trim(fgets(STDIN));
$a = trim(fgets(STDIN));
$b = trim(fgets(STDIN));

$c = $m - $a - $b;

echo max($a, max($b, $c)) . PHP_EOL;
?>