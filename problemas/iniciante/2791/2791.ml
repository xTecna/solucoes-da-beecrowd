Scanf.scanf "%d" (fun n ->
    if n = 1 then Printf.printf "1\n"
    else
      for i = 2 to 4 do
        Scanf.scanf " %d" (fun m -> if m = 1 then Printf.printf "%d\n" i)
      done)
