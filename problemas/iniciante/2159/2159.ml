Scanf.scanf "%d" (fun n ->
    Printf.printf "%.1f %.1f\n"
      (float_of_int n /. log (float_of_int n))
      (1.25506 *. float_of_int n /. log (float_of_int n)))
