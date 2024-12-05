Scanf.scanf "%d\n" (fun nota ->
    if nota > 85 then Printf.printf "A\n"
    else if nota > 60 then Printf.printf "B\n"
    else if nota > 35 then Printf.printf "C\n"
    else if nota > 0 then Printf.printf "D\n"
    else Printf.printf "E\n")
