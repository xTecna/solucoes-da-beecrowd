<?php
$pessoas = 0;
$jipes = 0;
while(!feof(STDIN)){
  $palavras = explode(' ', trim(fgets(STDIN)));
  if ($palavras[0] == 'ABEND'){
    break;
  }
  if ($palavras[0] == 'SALIDA'){
    $pessoas += intval($palavras[1]);
    $jipes += 1;
  }else{
    $pessoas -= intval($palavras[1]);
    $jipes -= 1;
  }
}

echo $pessoas . PHP_EOL;
echo $jipes . PHP_EOL;
?>