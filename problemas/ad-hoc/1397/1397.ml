let processa jogos =
  let jogador1 = ref 0 in
  let jogador2 = ref 0 in
  for _ = 1 to jogos do
    Scanf.scanf "%d %d\n" (fun a b ->
        if a > b then jogador1 := !jogador1 + 1
        else if a < b then jogador2 := !jogador2 + 1)
  done;
  Printf.printf "%d %d\n" !jogador1 !jogador2

let rec leitura () =
  try
    Scanf.scanf "%d\n" (fun jogos ->
        if jogos != 0 then (
          processa jogos;
          leitura ()))
  with End_of_file -> ()

let () = leitura ()
