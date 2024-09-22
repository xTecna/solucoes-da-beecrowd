<?php
$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
$c = $numeros[0];
$p = $numeros[1];
$f = $numeros[2];

if ($p >= $c * $f) {
  echo "S" . PHP_EOL;
} else {
  echo "N" . PHP_EOL;
}
?>