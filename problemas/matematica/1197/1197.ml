let rec leitura () =
  try
    Scanf.scanf "%d %d\n" (fun v t ->
        Printf.printf "%d\n" (v * 2 * t);
        leitura ())
  with End_of_file -> ()

let () = leitura ()
