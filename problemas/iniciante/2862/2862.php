<?php
$c = trim(fgets(STDIN));
for($i = 0; $i < $c; $i++) {
  $n = trim(fgets(STDIN));
  if($n <= 8000) {
    echo 'Inseto!' . PHP_EOL;
  } else {
    echo 'Mais de 8000!' . PHP_EOL;
  }
}
?>