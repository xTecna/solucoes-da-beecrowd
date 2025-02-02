Scanf.scanf "%d\n" (fun n ->
    for _ = 1 to n do
      Scanf.scanf "%d %d %d\n" (fun altura espessura galhos ->
          if 200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos
          then Printf.printf "Sim\n"
          else Printf.printf "Nao\n")
    done)
