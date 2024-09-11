Scanf.scanf "%d %f" (fun x y ->
    Printf.printf "%.3f km/l\n" (float_of_int x /. y))
