<?php
while(true){
  $n = trim(fgets(STDIN));

  if($n == 0){
    break;
  }
  
  for($i = 0; $i < $n; $i++){
    $opcao = -1;
    $corretos = 0;
    
    $cores = array_map('intval', explode(" ", trim(fgets(STDIN))));
    for($k = 0; $k < 5; $k++){
      if($cores[$k] <= 127){
        $opcao = $k;
        $corretos += 1;
      }
    }

    if($corretos == 1){
      echo chr(ord('A') + $opcao) . PHP_EOL;
    } else {
      echo '*' . PHP_EOL;
    }
  }
}
?>