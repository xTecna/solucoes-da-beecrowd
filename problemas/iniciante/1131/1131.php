<?php
$inter = 0;
$gremio = 0;
$empate = 0;
while(true){
  $entrada = array_map('intval', explode(" ", trim(fgets(STDIN))));
  $i = $entrada[0];
  $g = $entrada[1];

  if ($i < $g){
    $gremio += 1;
  } else if ($i == $g){
    $empate += 1;
  } else {
    $inter += 1;
  }

  $codigo = 0;
  while($codigo != 1 && $codigo != 2){
    echo 'Novo grenal (1-sim 2-nao)' . PHP_EOL;
    $codigo = trim(fgets(STDIN));
  }

  if($codigo == 2){
    break;
  }
}

echo ($inter + $gremio + $empate) . ' grenais' . PHP_EOL;
echo 'Inter:' . $inter . PHP_EOL;
echo 'Gremio:' . $gremio . PHP_EOL;
echo 'Empates:' . $empate . PHP_EOL;

if($inter > $gremio && $inter > $empate){
  echo 'Inter venceu mais' . PHP_EOL;
}else if($gremio > $inter && $gremio > $empate){
  echo 'Gremio venceu mais' . PHP_EOL;
}else{
  echo 'Nao houve vencedor' . PHP_EOL;
}
?>