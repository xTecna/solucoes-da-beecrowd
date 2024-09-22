<?php
function segura($m, $i, $j) {
  return $m[$i][$j] + $m[$i + 1][$j] + $m[$i][$j + 1] + $m[$i + 1][$j + 1] >= 2;
}

$n = trim(fgets(STDIN));

$M = array_fill(0, $n + 1, array_fill(0, $n + 1, 0));
for($i = 0; $i < $n + 1; $i++){
  $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
  for($j = 0; $j < $n + 1; $j++){
    $M[$i][$j] = $entrada[$j];
  }
}

for($i = 0; $i < $n; $i++){
  for($j = 0; $j < $n; $j++){
    if (segura($M, $i, $j)){
      echo 'S';
    }else{
      echo 'U';
    }
  }
  echo PHP_EOL;
}
?>