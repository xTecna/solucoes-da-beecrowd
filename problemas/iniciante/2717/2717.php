<?php
$n = trim(fgets(STDIN));
$numeros = array_map('intval', explode(' ', trim(fgets(STDIN))));
$a = $numeros[0];
$b = $numeros[1];

if($a + $b <= $n){
  echo 'Farei hoje!' . PHP_EOL;
}else{
  echo 'Deixa para amanha!' . PHP_EOL;
}
?>