<?php
$numeros = array_map('intval', explode(' ', trim(fgets(STDIN))));
$a = $numeros[0];
$b = $numeros[1];
$c = $numeros[2];

if($a == $b || $a == $c || $b == $c || ($a + $b) == $c || ($a + $c) == $b || ($b + $c) == $a) {
  echo 'S' . PHP_EOL;
} else {
  echo 'N' . PHP_EOL;
}
?>