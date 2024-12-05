<?php
$n = trim(fgets(STDIN));
if($n > 85){
  echo 'A' . PHP_EOL;
} else if($n > 60){
  echo 'B' . PHP_EOL;
} else if($n > 35){
  echo 'C' . PHP_EOL;
} else if($n > 0){
  echo 'D' . PHP_EOL;
} else {
  echo 'E' . PHP_EOL;
}
?>