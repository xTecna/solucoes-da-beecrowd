let rec leitura (teste: int) =
  try
    Scanf.scanf "%d\n" (fun n ->
        if n != -1 then (
					Printf.printf "Experiment %d: %d full cycle(s)\n" teste (n / 2);
					leitura (teste + 1)
		))
  with End_of_file -> ()

let () = leitura 1