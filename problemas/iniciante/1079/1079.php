<?php
$n = trim(fgets(STDIN));
for($i = 0; $i < $n; $i++){
    $numeros = array_map('floatval', explode(" ", trim(fgets(STDIN))));
    
    echo number_format((2 * $numeros[0] + 3 * $numeros[1] + 5 * $numeros[2])/10.0, 1, '.', '')  
}
