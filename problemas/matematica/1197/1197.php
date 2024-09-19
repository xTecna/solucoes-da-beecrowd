<?php
while (($entrada = fgets(STDIN)) !== false) {
  $entrada = array_map('intval', explode(" ", trim($entrada)));
  $v = $entrada[0];
  $t = $entrada[1];

  echo ($v * 2 * $t) . PHP_EOL;
}
?>
