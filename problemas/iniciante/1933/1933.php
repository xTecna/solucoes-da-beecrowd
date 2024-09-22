<?php
$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
$a = $numeros[0];
$b = $numeros[1];

if ($a == $b) {
  echo $a . PHP_EOL;
} else {
  echo max($a, $b) . PHP_EOL;
}
?>