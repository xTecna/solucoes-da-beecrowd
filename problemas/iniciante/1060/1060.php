<?php
$positivos = 0;

for($i = 0; $i < 6; $i++){
    sscanf(trim(fgets(STDIN)), "%lf", $numero);
    if($numero > 0){
        $positivos += 1;
    }
}

echo $positivos . " valores positivos" . PHP_EOL;
?>