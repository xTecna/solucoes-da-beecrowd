let rec leitura () =
  try
    Scanf.scanf "%d %d\n" (fun a b ->
        if (a != 0 || b != 0) then (
					Printf.printf "%d\n" (2 * a - b);
					leitura ())
				)
  with End_of_file -> ()

let () = leitura ()