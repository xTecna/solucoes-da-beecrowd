<?php
$B = trim(fgets(STDIN));
$T = trim(fgets(STDIN));

if ($B + $T > 160) {
    echo 1 . PHP_EOL;
} else if ($B + $T < 160) {
    echo 2 . PHP_EOL;
} else {
    echo 0 . PHP_EOL;
}
