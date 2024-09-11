<?php
for($i = 1; $i <= 9; $i += 2){
    for($j = 0; $j < 3; $j++){
        echo "I=" . $i . " J=" . (6 + $i - $j) . PHP_EOL;
    }
}
?>