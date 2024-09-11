<?php
$n = trim(fgets(STDIN));
for($i = 1; $i <= $n; $i++){
  echo $i . ' ' . ($i * $i) . ' ' . ($i * $i * $i) . PHP_EOL;
  echo $i . ' ' . ($i * $i + 1) . ' ' . ($i * $i * $i + 1) . PHP_EOL;
}
?>