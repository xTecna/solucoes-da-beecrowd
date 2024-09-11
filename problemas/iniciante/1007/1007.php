<?php
$A = trim(fgets(STDIN));
$B = trim(fgets(STDIN));
$C = trim(fgets(STDIN));
$D = trim(fgets(STDIN));

echo "DIFERENCA = " . (($A * $B) - ($C * $D)) . PHP_EOL;
?>