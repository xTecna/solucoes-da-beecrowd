<?php
function dist($x1, $y1, $x2, $y2) {
  return sqrt(($x2 - $x1) * ($x2 - $x1) + ($y2 - $y1) * ($y2 - $y1));
}

while(true) {
  $entrada = array_map('floatval', explode(" ", trim(fgets(STDIN))));
  $l = $entrada[0];
  $c = $entrada[1];
  $r1 = $entrada[2];
  $r2 = $entrada[3];
  if ($l == 0 && $c == 0 && $r1 == 0 && $r2 == 0) {
    break;
  }

  $x1 = $r1;
  $y1 = $r1;
  $x2 = $l - $r2;
  $y2 = $c - $r2;
  
  $distancia = dist($x1, $y1, $x2, $y2);
  if ($l < 2 * $r1 || $c < 2 * $r1 || $l < 2 * $r2 || $c < 2 * $r2 || $distancia < $r1 + $r2) {
    echo "N" . PHP_EOL;
  } else {
    echo "S" . PHP_EOL;
  }
}
?>