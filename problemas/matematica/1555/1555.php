<?php
function r($a, $b) {
  return (9 * $a * $a) + ($b * $b);
}

function b($a, $b) {
  return 2 * ($a * $a) + (25 * $b * $b);
}

function c($a, $b) {
  return -100 * $a + ($b * $b * $b);
}

$n = trim(fgets(STDIN));
for ($i = 0; $i < $n; $i++) {
  $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $x = $entrada[0];
  $y = $entrada[1];

  $rafael = r($x, $y);
  $beto = b($x, $y);
  $carlos = c($x, $y);

  if ($rafael > $beto && $rafael > $carlos) {
    echo 'Rafael ganhou' . PHP_EOL;
  } else if ($beto > $rafael && $beto > $carlos) {
    echo 'Beto ganhou' . PHP_EOL;
  } else {
    echo 'Carlos ganhou' . PHP_EOL;
  }
}
?>