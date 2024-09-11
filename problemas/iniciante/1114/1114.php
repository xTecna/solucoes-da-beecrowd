<?php
$senha = trim(fgets(STDIN));

while($senha != "2002"){
    echo "Senha Invalida" . PHP_EOL;
    $senha = trim(fgets(STDIN));
}

echo "Acesso Permitido" . PHP_EOL;
?>