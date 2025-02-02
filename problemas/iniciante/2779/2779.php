<?php
$figurinhas = array_fill(0, 110, false);

$n = trim(fgets(STDIN));
$m = trim(fgets(STDIN));

$resposta = 0;
for($i = 0; $i < $m; $i++){
  $x = trim(fgets(STDIN));
  if(!$figurinhas[$x]){
    $figurinhas[$x] = true;
    $resposta += 1;
  }
}

$resposta = $n - $resposta;
echo $resposta . PHP_EOL;
?>