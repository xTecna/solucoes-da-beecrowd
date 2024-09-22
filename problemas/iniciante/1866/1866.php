<?php
$n = trim(fgets(STDIN));
for($i = 0; $i < $n; $i++) {
  $x = trim(fgets(STDIN));
  echo ($x % 2) . PHP_EOL;
}
?>