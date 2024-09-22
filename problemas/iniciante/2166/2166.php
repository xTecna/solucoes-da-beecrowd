<?php
$n = trim(fgets(STDIN));

$resposta = 0.0;
if($n == 0) {
  $resposta = 1.0;
} else {
  $resposta = 2.0;
  for($i = 1; $i < $n; $i++) {
    $resposta = 2.0 + 1.0 / $resposta;
  }
  $resposta = 1.0 + 1.0 / $resposta;
}
echo number_format($resposta, 10, '.', '') . PHP_EOL;
?>