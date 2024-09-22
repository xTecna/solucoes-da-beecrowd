Scanf.scanf "%d\n" (fun n ->
    for _ = 1 to n do
      Scanf.scanf "%d %d\n" (fun r1 r2 -> Printf.printf "%d\n" (r1 + r2))
    done)
