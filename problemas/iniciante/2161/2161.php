<?php
$n = trim(fgets(STDIN));

$resposta = 0.0;
if($n == 0) {
  $resposta = 3.0;
} else {
  $resposta = 6.0;
  for($i = 1; $i < $n; $i++) {
    $resposta = 6.0 + 1.0 / $resposta;
  }
  $resposta = 3.0 + 1.0 / $resposta;
}
echo number_format($resposta, 10, '.', '') . PHP_EOL;
?>