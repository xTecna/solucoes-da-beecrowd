<?php
while(true){
  $k = trim(fgets(STDIN));

  if($k == 0){
    break;
  }

  $numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $n = $numeros[0];
  $m = $numeros[1];
  for($i = 0; $i < $k; $i++){
    $numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $x = $numeros[0];
    $y = $numeros[1];

    $x -= $n;
    $y -= $m;
    
    if($x > 0 && $y > 0){
      echo "NE" . PHP_EOL;
    } else if($x > 0 && $y < 0){
      echo "SE" . PHP_EOL;
    } else if($x < 0 && $y > 0){
      echo "NO" . PHP_EOL;
    } else if($x < 0 && $y < 0){
      echo "SO" . PHP_EOL;
    } else {
      echo "divisa" . PHP_EOL;
    }
  }
}
?>