<?php
$x = trim(fgets(STDIN));
while (true) {
  $z = trim(fgets(STDIN));
  if ($z > $x) {
    break;
  }
}

$soma = $x;
$resposta = 1;
while ($soma <= $z) {
  $soma += $x + $resposta;
  $resposta += 1;
}

echo $resposta . PHP_EOL;
?>