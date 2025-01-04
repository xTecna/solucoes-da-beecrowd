<?php
$campeonato = array_map('intval', explode(" ", trim(fgets(STDIN))));
sort($campeonato);

echo $campeonato[1] . PHP_EOL;
