<?php
$entrada = trim(fgets(STDIN));
sscanf($entrada, "%d", $n);

for($i = 1; $i < 11; $i++){
    echo $i . " x " . $n . " = " . ($i * $n) . PHP_EOL;
}
?>