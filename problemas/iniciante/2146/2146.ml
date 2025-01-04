let rec leitura () =
  try
    Scanf.scanf "%d\n" (fun senha ->
        Printf.printf "%d\n" (senha - 1);
        leitura ())
  with End_of_file -> ()

let () = leitura ()