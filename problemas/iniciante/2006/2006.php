<?php
$t = trim(fgets(STDIN));
$respostas = array_map('intval', explode(" ", trim(fgets(STDIN))));

$contador = 0;
for($i = 0; $i < 5; $i++) {
  if ($respostas[$i] == $t) {
    $contador += 1;
  }
}

echo $contador . PHP_EOL;
?>