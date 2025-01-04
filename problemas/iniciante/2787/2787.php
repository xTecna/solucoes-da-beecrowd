<?php
$l = trim(fgets(STDIN));
$c = trim(fgets(STDIN));
echo (1 - (($l % 2) ^ ($c % 2))) . PHP_EOL;
?>