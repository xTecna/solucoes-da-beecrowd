<?php
$A = floatval(trim(fgets(STDIN)));
$B = floatval(trim(fgets(STDIN)));
$C = floatval(trim(fgets(STDIN)));

echo "MEDIA = " . number_format((2 * $A + 3 * $B + 5 * $C)/10, 1, '.', '') . PHP_EOL;
?>