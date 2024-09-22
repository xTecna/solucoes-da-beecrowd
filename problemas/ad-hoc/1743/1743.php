<?php
$x = array_map('intval', explode(" ", trim(fgets(STDIN))));
$y = array_map('intval', explode(" ", trim(fgets(STDIN))));

$compativel = true;
for($i = 0; $i < 5; $i++){
  if($x[$i] == $y[$i]){
    $compativel = false;
    break;
  }
}

if($compativel){
  echo 'Y' . PHP_EOL;
}else{
  echo 'N' . PHP_EOL;
}
?>