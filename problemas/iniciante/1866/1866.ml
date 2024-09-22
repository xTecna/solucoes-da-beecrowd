Scanf.scanf "%d\n" (fun n ->
    for _ = 1 to n do
      Scanf.scanf "%d\n" (fun x -> Printf.printf "%d\n" (x mod 2))
    done)
