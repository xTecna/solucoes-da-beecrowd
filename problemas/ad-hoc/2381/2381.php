<?php
$numeros = array_map('intval', explode(" ", trim(fgets(STDIN))));
$n = $numeros[0];
$k = $numeros[1];

$alunos = [];
for ($i = 0; $i < $n; $i++) {
  array_push($alunos, trim(fgets(STDIN)));
}
sort($alunos);

echo $alunos[$k - 1] . PHP_EOL;
?>