<?php
$t = trim(fgets(STDIN));
for($k = 0; $k < $t; $k++){
  $numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $d = $numeros[0];
  $i = $numeros[1];
  $b = $numeros[2];

  $precos = array_map('intval', explode(" ", trim(fgets(STDIN))));

  $resposta = 0;
  for($i = 0; $i < $b; $i++){
    $bolo = array_map('intval', explode(" ", trim(fgets(STDIN))));

    $custo = 0;
    for($j = 1; $j < count($bolo); $j += 2){
      $custo += $precos[$bolo[$j]] * $bolo[$j + 1];
    }
    $resposta = max($resposta, intval($d / $custo));
  }

  echo $resposta . PHP_EOL;
}
?>