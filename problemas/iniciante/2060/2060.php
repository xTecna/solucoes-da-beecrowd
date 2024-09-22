<?php
$n = trim(fgets(STDIN));
$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));

$dois = 0;
$tres = 0;
$quatro = 0;
$cinco = 0;
for($i = 0; $i < count($numeros); $i++) {
  $numero = $numeros[$i];
  if ($numero % 2 == 0) {
    $dois += 1;
  }
  if ($numero % 3 == 0) {
    $tres += 1;
  }
  if ($numero % 4 == 0) {
    $quatro += 1;
  }
  if ($numero % 5 == 0) {
    $cinco += 1;
  }
}

echo $dois . " Multiplo(s) de 2" . PHP_EOL;
echo $tres . " Multiplo(s) de 3" . PHP_EOL;
echo $quatro . " Multiplo(s) de 4" . PHP_EOL;
echo $cinco . " Multiplo(s) de 5" . PHP_EOL;
?>