<?php
$k = trim(fgets(STDIN));

if($k == 1){
  echo "Top 1" . PHP_EOL;
}else if($k <= 3){
  echo "Top 3" . PHP_EOL;
}else if($k <= 5){
  echo "Top 5" . PHP_EOL;
}else if($k <= 10){
  echo "Top 10" . PHP_EOL;
}else if($k <= 25){
  echo "Top 25" . PHP_EOL;
}else if($k <= 50){
  echo "Top 50" . PHP_EOL;
}else{
  echo "Top 100" . PHP_EOL;
}
?>