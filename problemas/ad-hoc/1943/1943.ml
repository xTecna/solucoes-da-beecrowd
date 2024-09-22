Scanf.scanf "%d\n" (fun k ->
    if k == 1 then Printf.printf "Top 1\n"
    else if k <= 3 then Printf.printf "Top 3\n"
    else if k <= 5 then Printf.printf "Top 5\n"
    else if k <= 10 then Printf.printf "Top 10\n"
    else if k <= 25 then Printf.printf "Top 25\n"
    else if k <= 50 then Printf.printf "Top 50\n"
    else Printf.printf "Top 100\n")
