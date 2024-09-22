<?php
while (TRUE) {
  $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $x = $entrada[0];
  $m = $entrada[1];

  if($x == 0 && $m == 0){
    break;
  }

  echo ($x * $m) . PHP_EOL;
}
?>