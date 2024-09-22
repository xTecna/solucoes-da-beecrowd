<?php
$tomadas = array_map('intval', explode(" ", trim(fgets(STDIN))));

$soma = 0;
for($i = 0; $i < 5; $i++) {
  $soma += $tomadas[$i];
}
echo ($soma - 3) . PHP_EOL;
?>