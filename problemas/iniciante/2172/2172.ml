let rec leitura () =
  try
    Scanf.scanf "%d %d\n" (fun x m ->
        if x != 0 && m != 0 then (
          Printf.printf "%d\n" (x * m);
          leitura ()))
  with End_of_file -> ()

let () = leitura ()
