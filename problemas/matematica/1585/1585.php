<?php
$n = trim(fgets(STDIN));
for($i = 0; $i < $n; $i++) {
  $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $x = $entrada[0];
  $y = $entrada[1];

  echo (int)(($x * $y)/2) . ' cm2' . PHP_EOL;
}
?>