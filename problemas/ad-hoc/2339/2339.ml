Scanf.scanf "%d %d %d" (fun c p f ->
    if p >= c * f then Printf.printf "S\n" else Printf.printf "N\n")
