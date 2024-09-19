<?php
function somaPA($a1, $an, $n){
  return (($a1 + $an) * $n)/2;
}

$n = trim(fgets(STDIN));
for($i = 0; $i < $n; $i++){
  $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $x = $entrada[0];
  $y = $entrada[1];

  $x += 1 - (abs($x) % 2);
  
  echo somaPA($x, $x + ($y - 1) * 2, $y) . PHP_EOL;
}
?>