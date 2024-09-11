let rec leitura2 () =
  try
    Printf.printf "Novo grenal (1-sim 2-nao)\n";
    let resposta = ref 0 in
    Scanf.scanf "%d\n" (fun codigo ->
        if codigo = 1 then resposta := 1
        else if codigo <> 2 then resposta := leitura2 ()
        else resposta := 2);
    !resposta
  with End_of_file -> 2
in

let rec leitura () =
  try
    let inter = ref 0 in
    let gremio = ref 0 in
    let empate = ref 0 in
    Scanf.scanf "%d %d\n" (fun i g ->
        if i > g then inter := !inter + 1
        else if i = g then empate := !empate + 1
        else gremio := !gremio + 1);
    let i, g, e = match leitura2 () with 1 -> leitura () | _ -> (0, 0, 0) in
    (!inter + i, !gremio + g, !empate + e)
  with End_of_file -> (0, 0, 0)
in

let inter, gremio, empate = leitura () in
Printf.printf "%d grenais\n" (inter + gremio + empate);
Printf.printf "Inter:%d\n" inter;
Printf.printf "Gremio:%d\n" gremio;
Printf.printf "Empates:%d\n" empate;
if inter > gremio && inter > empate then Printf.printf "Inter venceu mais\n"
else if gremio > inter && gremio > empate then
  Printf.printf "Gremio venceu mais\n"
else Printf.printf "Nao houve vencedor\n"
