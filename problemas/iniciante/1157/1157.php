<?php
$n = trim(fgets(STDIN));
for($i = 1; $i <= $n; $i++){
  if($n % $i == 0){
    echo $i . PHP_EOL;
  }
}
?>