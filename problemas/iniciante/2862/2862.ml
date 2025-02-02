Scanf.scanf "%d\n" (fun c ->
    for _ = 1 to c do
      Scanf.scanf "%d\n" (fun n ->
          if n <= 8000 then Printf.printf "Inseto!\n"
          else Printf.printf "Mais de 8000!\n")
    done)
