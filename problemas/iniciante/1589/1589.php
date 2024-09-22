<?php
$n = trim(fgets(STDIN));

for($i = 0; $i < $n; $i++) {
  $numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $r1 = $numeros[0];
  $r2 = $numeros[1];

  echo ($r1 + $r2) . PHP_EOL;
}
?>