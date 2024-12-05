<?php
$n = trim(fgets(STDIN));
for ($i = 1; $i < 4 * $n; $i += 4) {
    echo $i . " " . ($i + 1) . " " . ($i + 2) . " PUM" . PHP_EOL;
}
