<?php
$conteiner = array_map('intval', explode(" ", trim(fgets(STDIN))));
$navio = array_map('intval', explode(" ", trim(fgets(STDIN))));

echo (intdiv($navio[0], $conteiner[0]) * intdiv($navio[1], $conteiner[1]) * intdiv($navio[2], $conteiner[2])) . PHP_EOL;
