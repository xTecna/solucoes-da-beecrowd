<?php
$numeros = array_map('intval', explode(' ', trim(fgets(STDIN))));
for($i = 0; $i < 4; $i++) {
  if($numeros[$i] == 1) {
    echo ($i + 1) . PHP_EOL;
    break;
  }
}
?>