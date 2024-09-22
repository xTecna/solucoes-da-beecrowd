<?php
while (true) {
  $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $m = $entrada[0];
  $n = $entrada[1];

  if($m == 0 && $n == 0){
    break;
  }

  $soma = $m + $n;
  $soma = str_replace('0', '', $soma);
  echo $soma . PHP_EOL;
}
?>