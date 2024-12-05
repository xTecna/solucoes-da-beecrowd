<?php
$numeros = array_map('intval', explode(' ', trim(fgets(STDIN))));
echo number_format($numeros[0]/$numeros[1], 2, '.', '') . PHP_EOL;
?>