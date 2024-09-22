let rec leitura pessoas jipes =
  try
    Scanf.scanf "%s" (fun palavra ->
        if palavra = "ABEND" then Printf.printf "%d\n%d\n" pessoas jipes
        else if palavra = "SALIDA" then
          Scanf.scanf " %d\n" (fun x -> leitura (pessoas + x) (jipes + 1))
        else Scanf.scanf " %d\n" (fun x -> leitura (pessoas - x) (jipes - 1)))
  with End_of_file -> ()

let () = leitura 0 0
