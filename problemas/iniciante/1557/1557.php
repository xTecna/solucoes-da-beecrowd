<?php
while (true) {
  $n = trim(fgets(STDIN));

  if ($n == 0) {
    break;
  }

  $limite = floor(log10(1 << (2 * $n - 2))) + 1;
  for($i = 0; $i < $n; $i++) {
    echo str_pad(strval(1 << $i), $limite, " ", STR_PAD_LEFT);
    for($j = 1; $j < $n; $j++) {
      echo " ";
      echo str_pad(strval(1 << ($i + $j)), $limite, " ", STR_PAD_LEFT);
    }
    echo PHP_EOL;
  }
  echo PHP_EOL;
}
?>