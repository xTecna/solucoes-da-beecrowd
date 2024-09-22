let n = int_of_string (read_line ()) in
let levadas = ref 0 in
let comportadas = ref 0 in
let criancas = Array.make n "" in
for i = 0 to n - 1 do
  let entrada = String.split_on_char ' ' (read_line ()) in
  let comportamento = List.hd entrada in
  let crianca = List.hd (List.tl entrada) in
  if comportamento = "+" then comportadas := !comportadas + 1
  else levadas := !levadas + 1;
  criancas.(i) <- crianca
done;
Array.sort compare criancas;
for i = 0 to n - 1 do
  Printf.printf "%s\n" criancas.(i)
done;
Printf.printf "Se comportaram: %d | Nao se comportaram: %d\n" !comportadas
  !levadas
