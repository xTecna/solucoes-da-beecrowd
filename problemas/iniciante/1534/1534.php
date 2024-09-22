<?php
while (!feof(STDIN)) {
  $n = trim(fgets(STDIN));

  for($i = 0; $i < $n; $i++) {
    for($j = 0; $j < $n; $j++) {
      if($i == $n - 1 - $j){
        echo 2;
      } else if($i == $j) {
        echo 1;
      } else {
        echo 3;
      }
    }
    echo PHP_EOL;
  }
}
?>