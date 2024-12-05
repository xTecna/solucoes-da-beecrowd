<?php
$n = trim(fgets(STDIN));

$vitorias = 0;
for($i = 0; $i < $n; $i++){
  $x = trim(fgets(STDIN));
  if($x != 1){
    $vitorias += 1;
  }
}

echo $vitorias . PHP_EOL;
?>