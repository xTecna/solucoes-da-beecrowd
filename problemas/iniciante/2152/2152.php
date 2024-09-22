<?php
$n = trim(fgets(STDIN));
for($i = 0; $i < $n; $i++) {
  $numeros = array_map('intval', explode(' ', trim(fgets(STDIN))));
  $h = $numeros[0];
  $m = $numeros[1];
  $o = $numeros[2];

  if($o == 1) {
    echo str_pad($h, 2, '0', STR_PAD_LEFT) . ':' . str_pad($m, 2, '0', STR_PAD_LEFT) . ' - A porta abriu!'  
  } else {
    echo str_pad($h, 2, '0', STR_PAD_LEFT) . ':' . str_pad($m, 2, '0', STR_PAD_LEFT) . ' - A porta fechou!'  
  }
}
