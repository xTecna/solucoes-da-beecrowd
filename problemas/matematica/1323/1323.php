<?php
$F = array_fill(0, 101, -1);
$F[1] = 1;

function feynman($n) {
  global $F;

  if($F[$n] == -1){
    $F[$n] = feynman($n - 1) + $n * $n;
  }
  return $F[$n];
}

while(!feof(STDIN)){
  $n = trim(fgets(STDIN));
  
  if($n == 0){
    break;
  }
  
  echo feynman($n) . PHP_EOL;
}
?>