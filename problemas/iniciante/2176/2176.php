<?php
$s = trim(fgets(STDIN));

$soma = 0;
for($i = 0; $i < strlen($s); $i++) {
  $soma += intval($s[$i]);
}
echo $s . ($soma % 2) . PHP_EOL;
?>