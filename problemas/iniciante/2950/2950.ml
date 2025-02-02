Scanf.scanf "%d %d %d" (fun n x y ->
    Printf.printf "%.2f\n" (float_of_int n /. float_of_int (x + y)))
