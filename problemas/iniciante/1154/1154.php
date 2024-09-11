<?php
$soma = 0;
$q = 0;
while(true){
  $idade = trim(fgets(STDIN));

  if($idade < 0){
    break;
  }
  
  $soma += $idade;
  $q += 1;
}

echo number_format(($soma / $q), 2, '.', '') . PHP_EOL;
?>