<?php
$t = trim(fgets(STDIN));
for ($i = 0; $i < $t; $i++) {
  $n = trim(fgets(STDIN));
  echo ((1 << $n) - 1) . PHP_EOL;
}
?>