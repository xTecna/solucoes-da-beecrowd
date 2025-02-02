<?php
$n = trim(fgets(STDIN));

for($i = 0; $i < $n; $i++){
  $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $altura = intval($entrada[0]);
  $espessura = intval($entrada[1]);
  $galhos = intval($entrada[2]);

  if(200 <= $altura && $altura <= 300 && 50 <= $espessura && 150 <= $galhos){
    echo 'Sim' . PHP_EOL;
  }else{
    echo 'Nao' . PHP_EOL;
  }
}
?>