<?php
$l = trim(fgets(STDIN));
$c = trim(fgets(STDIN));

echo ($l * $c + ($l - 1) * ($c - 1)) . PHP_EOL;
echo (2 * ($l + $c - 2)) . PHP_EOL;
?>