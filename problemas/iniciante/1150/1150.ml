let rec leitura x =
  Scanf.scanf "%d\n" (fun z -> if z > x then z else leitura x)
in

let rec processa soma resposta x z =
  if soma <= z then processa (soma + x + resposta) (resposta + 1) x z
  else resposta
in

Scanf.scanf "%d\n" (fun x ->
    let z = leitura x in
    let resposta = processa x 1 x z in
    Printf.printf "%d\n" resposta)
