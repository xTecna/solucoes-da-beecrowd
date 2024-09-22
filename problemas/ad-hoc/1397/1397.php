<?php
while(true){
  $n = trim(fgets(STDIN));

  if($n == 0){
    break;
  }
  
  $jogador1 = 0;
  $jogador2 = 0;
  for($i = 0; $i < $n; $i++){
    $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $a = $entrada[0];
    $b = $entrada[1];

    if($a > $b){
      $jogador1 += 1;
    } else if($a < $b) {
      $jogador2 += 1;
    }
  }
  
  echo $jogador1 . ' ' . $jogador2 . PHP_EOL;
}
?>