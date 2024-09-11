<?php
$segundos = trim(fgets(STDIN));

$horas = intdiv($segundos, 3600);
$segundos %= 3600;
$minutos = intdiv($segundos, 60);
$segundos %= 60;

echo $horas . ':' . $minutos . ':' . $segundos . PHP_EOL;
?>