Scanf.scanf "%d\n" (fun n ->
    Scanf.scanf "%d %c %d\n" (fun p c q ->
        if c == '+' then
          if p + q <= n then Printf.printf "OK\n"
          else Printf.printf "OVERFLOW\n"
        else if p * q <= n then Printf.printf "OK\n"
        else Printf.printf "OVERFLOW\n"))
