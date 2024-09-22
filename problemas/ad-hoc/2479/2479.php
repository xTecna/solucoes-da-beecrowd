<?php
$n = trim(fgets(STDIN));

$levadas = 0;
$criancas = [];
$comportadas = 0;
for ($i = 0; $i < $n; $i++) {
  $palavras = explode(" ", trim(fgets(STDIN)));

  if ($palavras[0] == '+'){
    $comportadas += 1;
  } else {
    $levadas += 1;
  }
  
  array_push($criancas, $palavras[1]);
}
sort($criancas);

for($i = 0; $i < $n; $i++) {
  echo $criancas[$i] . PHP_EOL;
}
echo 'Se comportaram: ' . $comportadas . ' | Nao se comportaram: ' . $levadas . PHP_EOL;
?>