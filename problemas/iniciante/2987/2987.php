<?php
$l = trim(fgets(STDIN));
echo (ord($l[0]) - ord('A') + 1) . PHP_EOL;
?>