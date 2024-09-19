Scanf.scanf "%d" (fun t ->
    for i = 0 to 999 do
      Printf.printf "N[%d] = %d\n" i (i mod t)
    done)
