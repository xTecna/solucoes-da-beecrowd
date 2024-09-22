let linha = String.split_on_char ' ' (read_line ()) in
let n = int_of_string (List.hd linha) in
let k = int_of_string (List.hd (List.tl linha)) in
let alunos = Array.make n "" in
for i = 0 to n - 1 do
  alunos.(i) <- read_line ()
done;
Array.sort compare alunos;
Printf.printf "%s\n" alunos.(k - 1)
