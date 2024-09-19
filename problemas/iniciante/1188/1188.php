<?php
$t = trim(fgets(STDIN));

$M = array_fill(0, 12, array_fill(0, 12, 0));
for($i = 0; $i < 12; $i++){
  for($j = 0; $j < 12; $j++){
    $M[$i][$j] = trim(fgets(STDIN));
  }
}

$media = 0.0;
$quantidade = 0;
for($i = 7; $i < 12; $i++){
  for($j = 12 - $i; $j < $i; $j++){
    $media += $M[$i][$j];
    $quantidade += 1;
  }
}

if($t == "M"){
  $media /= $quantidade;
}

echo number_format($media, 1, '.', '') . PHP_EOL;
?>