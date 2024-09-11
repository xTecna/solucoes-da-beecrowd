Scanf.scanf "%d\n" (fun n ->
    for _ = 1 to n do
      Scanf.scanf "%d %d\n" (fun x y ->
          if y == 0 then Printf.printf "divisao impossivel\n"
          else Printf.printf "%.1f\n" (float_of_int x /. float_of_int y))
    done)
