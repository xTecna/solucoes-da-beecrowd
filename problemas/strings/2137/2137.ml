let processa n =
  let biblioteca = Array.make n "" in
  for i = 0 to n - 1 do
    biblioteca.(i) <- read_line ()
  done;
  Array.sort compare biblioteca;
  for i = 0 to n - 1 do
    Printf.printf "%s\n" biblioteca.(i)
  done

let rec leitura () =
  try
    let n = int_of_string (read_line ()) in
    if n > 0 then (
      processa n;
      leitura ())
  with End_of_file -> ()

let () = leitura ()
