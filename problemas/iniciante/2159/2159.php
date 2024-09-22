<?php
$n = trim(fgets(STDIN));

echo number_format($n / log($n), 1, '.', '') . ' ' . number_format(1.25506 * $n / log($n), 1,    
