Scanf.scanf "%d\n" (fun t ->
    for _ = 1 to t do
      Scanf.scanf "%d %d\n" (fun n k ->
          Printf.printf "%d\n" ((n / k) + (n mod k)))
    done)
