<?php
$partes = explode(".", trim(fgets(STDIN)));
$partes2 = explode("-", $partes[2]);

echo $partes[0] . PHP_EOL;
echo $partes[1] . PHP_EOL;
echo $partes2[0] . PHP_EOL;
echo $partes2[1] . PHP_EOL;
?>