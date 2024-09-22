<?php
$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
$p1 = $numeros[0];
$c1 = $numeros[1];
$p2 = $numeros[2];
$c2 = $numeros[3];

$diferenca = $p2 * $c2 - $p1 * $c1;

if($diferenca < 0){
  echo -1 . PHP_EOL;
}else if($diferenca > 0){
  echo 1 . PHP_EOL;
}else{
  echo 0 . PHP_EOL;
}
?>