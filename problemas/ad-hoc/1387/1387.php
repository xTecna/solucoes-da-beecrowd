<?php
while(true){
  $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $l = $entrada[0];
  $r = $entrada[1];

  if($l == 0 && $r == 0){
    break;
  }
  
  echo ($l + $r) . PHP_EOL;
}
?>