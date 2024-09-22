Scanf.scanf "%d\n" (fun n ->
    for _ = 0 to n - 1 do
      Scanf.scanf "%d %d\n" (fun x y -> Printf.printf "%d cm2\n" (x * y / 2))
    done)
