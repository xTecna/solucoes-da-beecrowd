let nomes = [| "Rolien"; "Naej"; "Elehcim"; "Odranoel" |] in
Scanf.scanf "%d\n" (fun n ->
    for _ = 1 to n do
      Scanf.scanf "%d\n" (fun k ->
          for _ = 1 to k do
            Scanf.scanf "%d\n" (fun feedback ->
                Printf.printf "%s\n" nomes.(feedback - 1))
          done)
    done)
