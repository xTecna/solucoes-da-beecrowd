Scanf.scanf "%d %d\n" (fun p r ->
    if p == 1 then if r == 1 then Printf.printf "A\n" else Printf.printf "B\n"
    else Printf.printf "C\n")
