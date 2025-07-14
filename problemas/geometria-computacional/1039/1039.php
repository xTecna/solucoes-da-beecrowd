<?php
function dist($x1, $y1, $x2, $y2) {
  return sqrt(($x2 - $x1) * ($x2 - $x1) + ($y2 - $y1) * ($y2 - $y1));
}

while(!feof(STDIN)) {
  $linha = trim(fgets(STDIN));
  if($linha == '') {
    break;
  }

  $entrada = array_map('floatval', explode(" ", $linha));
  $r1 = $entrada[0];
  $x1 = $entrada[1];
  $y1 = $entrada[2];
  $r2 = $entrada[3];
  $x2 = $entrada[4];
  $y2 = $entrada[5];
  
  if (dist($x1, $y1, $x2, $y2) <= $r1 - $r2) {
    echo "RICO" . PHP_EOL;
  } else {
    echo "MORTO" . PHP_EOL;
  }
}
?>