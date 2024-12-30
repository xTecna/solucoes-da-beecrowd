Scanf.scanf "%d\n" (fun t ->
    for _ = 0 to t - 1 do
      Scanf.scanf "%d\n" (fun n -> Printf.printf "%d\n" ((1 lsl n) - 1))
    done)
