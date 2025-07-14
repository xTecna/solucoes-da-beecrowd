Scanf.scanf "%d %d" (fun r l ->
    let pi = 3.1415 in
    let v =
      4.0 *. pi *. float_of_int r *. float_of_int r *. float_of_int r /. 3.0
    in
    Printf.printf "%d\n" (int_of_float (float_of_int l /. v)))
