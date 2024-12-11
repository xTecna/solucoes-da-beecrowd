<?php
$t = trim(fgets(STDIN));

for($i = 0; $i < $t; $i++){
  $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $n = intval($entrada[0]);
  $k = intval($entrada[1]);

  echo floor($n / $k) + ($n % $k) . PHP_EOL;
}
?>