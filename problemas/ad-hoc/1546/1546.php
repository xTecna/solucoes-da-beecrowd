<?php
$nomes = ["Rolien", "Naej", "Elehcim", "Odranoel"];

$n = trim(fgets(STDIN));
for($i = 0; $i < $n; $i++){
  $k = trim(fgets(STDIN));
  for($j = 0; $j < $k; $j++){
    $feedback = trim(fgets(STDIN));
    echo $nomes[$feedback - 1] . PHP_EOL;
  }
}
?>