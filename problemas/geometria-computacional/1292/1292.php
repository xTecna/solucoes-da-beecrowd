<?php
while(!feof(STDIN)){
  $f = floatval(trim(fgets(STDIN)));
  $lado = $f * sin(108 * acos(-1) / 180) / sin(63 * acos(-1) / 180);
  echo number_format($lado, 10, '.', '') . PHP_EOL;
}
?>