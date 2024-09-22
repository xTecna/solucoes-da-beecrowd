<?php
$entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
$p = $entrada[0];
$r = $entrada[1];

if ($p == 1){
  if ($r == 1){
    echo 'A' . PHP_EOL;
  } else {
    echo 'B' . PHP_EOL;
  }
} else {
  echo 'C' . PHP_EOL;
}
?>