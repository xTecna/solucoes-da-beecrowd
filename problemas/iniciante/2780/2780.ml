Scanf.scanf "%d\n" (fun d ->
    if d <= 800 then Printf.printf "1\n"
    else if d <= 1400 then Printf.printf "2\n"
    else Printf.printf "3\n")
