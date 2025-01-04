<?php
$pi = 3.14;
while (!feof(STDIN)) {
  $v = trim(fgets(STDIN));
  $d = trim(fgets(STDIN)) / 2;

  $area = $pi * $d * $d;
  $altura = $v / $area;

  echo 'ALTURA = ' . number_format($altura, 2, '.', '') . PHP_EOL;
  echo 'AREA = ' . number_format($area, 2, '.', '') . PHP_EOL;
}
?>