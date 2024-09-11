<?php
function somaPA($a1, $an, $n){
  return (($a1 + $an) * $n)/2;
}

$entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
$a = $entrada[0];

$n = 0;
for($i = 1; $i < count($entrada); $i++) {
  $n = $entrada[$i];
  if ($n > 0) {
    break;
  }
}

echo somaPA($a, $a + $n - 1, $n) . PHP_EOL;
?>