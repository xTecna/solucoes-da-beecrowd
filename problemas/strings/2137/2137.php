<?php
while (!feof(STDIN)) {
  $n = trim(fgets(STDIN));

  $biblioteca = [];
  for ($i = 0; $i < $n; $i++) {
    array_push($biblioteca, trim(fgets(STDIN)));
  }

  sort($biblioteca);

  for ($i = 0; $i < $n; $i++) {
    echo $biblioteca[$i] . PHP_EOL;
  }
}
?>