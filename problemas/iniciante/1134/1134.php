<?php
$alcool = 0;
$gasolina = 0;
$diesel = 0;

$codigo = trim(fgets(STDIN));
while($codigo != 4){
    if($codigo == 1){
        $alcool += 1;
    }else if($codigo == 2){
        $gasolina += 1;
    }else if($codigo == 3){
        $diesel += 1;
    }
    
    $codigo = trim(fgets(STDIN));
}

echo "MUITO OBRIGADO" . PHP_EOL;
echo "Alcool: " . $alcool . PHP_EOL;
echo "Gasolina: " . $gasolina . PHP_EOL;
echo "Diesel: " . $diesel . PHP_EOL;
?>