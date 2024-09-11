<?php
$entrada = trim(fgets(STDIN));
sscanf($entrada, "%d %d", $codigo, $quantidade);

$precos = [4.00, 4.50, 5.00, 2.00, 1.50];

echo "Total: R$ " . number_format($quantidade * $precos[$codigo - 1], 2, '.', '') . PHP_EOL;
?>