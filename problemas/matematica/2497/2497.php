<?php
$teste = 1;
while (!feof(STDIN)) {
    $n = trim(fgets(STDIN));

    if ($n == -1) {
        break;
    }

    echo "Experiment " . $teste . ": " . intdiv($n, 2) . " full cycle(s)" . PHP_EOL;
    $teste += 1;
}
