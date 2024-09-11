<?php
$X = trim(fgets(STDIN));
$Y = floatval(trim(fgets(STDIN)));

echo number_format($X / $Y, 3, '.', '') . " km/l" . PHP_EOL;
?>