<?php
$tempo = trim(fgets(STDIN));
$velocidade = trim(fgets(STDIN));

echo number_format(($tempo * $velocidade)/12.0, 3, '.', '') . PHP_EOL;
?>