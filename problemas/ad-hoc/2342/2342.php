<?php
$n = trim(fgets(STDIN));

$palavras = explode(" ", trim(fgets(STDIN)));
$p = intval($palavras[0]);
$c = $palavras[1];
$q = intval($palavras[2]);

if ($c == '+') {
  if ($p + $q <= $n) {
    echo 'OK' . PHP_EOL;
  } else {
    echo 'OVERFLOW' . PHP_EOL;
  }
} else {
  if ($p * $q <= $n) {
    echo 'OK' . PHP_EOL;
  } else {
    echo 'OVERFLOW' . PHP_EOL;
  }
}
?>