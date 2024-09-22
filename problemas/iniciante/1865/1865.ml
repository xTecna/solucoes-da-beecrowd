Scanf.scanf "%d\n" (fun n ->
    for _ = 1 to n do
      Scanf.scanf "%s %d\n" (fun nome __FILE__ ->
          if nome = "Thor" then Printf.printf "Y\n" else Printf.printf "N\n")
    done)
