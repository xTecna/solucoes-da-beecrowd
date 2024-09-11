Scanf.scanf "%d %d" (fun tempo velocidade ->
    Printf.printf "%.3f\n" (float_of_int (tempo * velocidade) /. 12.0))
