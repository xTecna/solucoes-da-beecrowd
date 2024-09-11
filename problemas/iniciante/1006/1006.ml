Scanf.scanf "%f %f %f" (fun a b c ->
    Printf.printf "MEDIA = %.1f\n"
      (((2.0 *. a) +. (3.0 *. b) +. (5.0 *. c)) /. 10.0))
