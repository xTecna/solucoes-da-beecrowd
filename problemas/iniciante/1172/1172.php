<?php
for($i = 0; $i < 10; $i++){
  $numero = trim(fgets(STDIN));
  if($numero > 0) {
    echo "X[" . $i . "] = " . $numero . PHP_EOL;
  } else {
    echo "X[" . $i . "] = 1" . PHP_EOL;
  }
}
?>