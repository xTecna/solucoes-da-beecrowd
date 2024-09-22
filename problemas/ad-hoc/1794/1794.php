<?php
$n = trim(fgets(STDIN));

$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
$la = $numeros[0];
$lb = $numeros[1];

$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
$sa = $numeros[0];
$sb = $numeros[1];

if ($la <= $n && $n <= $lb && $sa <= $n && $n <= $sb) {
  echo 'possivel' . PHP_EOL;
} else {
  echo 'impossivel' . PHP_EOL;
}
?>