<?php
$n = trim(fgets(STDIN));
if ($n <= 800) {
  echo '1' . PHP_EOL;
} else if ($n <= 1400) {
  echo '2' . PHP_EOL;
} else {
  echo '3' . PHP_EOL;
}
?>