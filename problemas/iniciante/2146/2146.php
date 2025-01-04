<?php
while (!feof(STDIN)) {
  $n = trim(fgets(STDIN));
  if (is_numeric($n)) {
    echo ($n - 1) . PHP_EOL;
  }
}
?>