<?php
$precos = [0, 1.5, 2.5, 3.5, 4.5, 5.5];
$p = trim(fgets(STDIN));

$valor = 0.0;
for($i = 0; $i < $p; $i++){
  $numeros = array_map('intval', explode(' ', trim(fgets(STDIN))));
  $codigo = $numeros[0];
  $q = $numeros[1];

  $valor += $precos[$codigo - 1000] * $q;
}

echo number_format($valor, 2, '.', '') . PHP_EOL;
?>