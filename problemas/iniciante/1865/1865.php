<?php
$n = trim(fgets(STDIN));

for($i = 0; $i < $n; $i++){
  $palavras = explode(" ", trim(fgets(STDIN)));

  if ($palavras[0] == "Thor") {
    echo "Y" . PHP_EOL;
  } else {
    echo "N" . PHP_EOL;
  }
}
?>