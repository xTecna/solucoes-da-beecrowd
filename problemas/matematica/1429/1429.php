<?php
function converteParaDecimal($numero) {
  $resposta = 0;
  $potencia = 0;
  $fatoriais = [1, 2, 6, 24, 120];

  for($i = strlen($numero) - 1; $i > -1; $i--) {
    $resposta += intval($numero[$i]) * $fatoriais[$potencia];
    $potencia += 1;
  }
  
  return $resposta;
}

while(!feof(STDIN)){
  $n = trim((string) fgets(STDIN));

  if ($n === "0") {
    break;
  }

  echo converteParaDecimal($n) . PHP_EOL;
}
?>