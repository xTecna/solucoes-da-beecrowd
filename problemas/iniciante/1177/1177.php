<?php
$n = trim(fgets(STDIN));
for($i = 0; $i < 1000; $i++){
  echo 'N[' . $i . '] = ' . ($i % $n) . PHP_EOL;
}
?>