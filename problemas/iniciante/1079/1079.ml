Scanf.scanf "%d\n" (fun n ->
    for _ = 1 to n do
      Scanf.scanf "%f %f %f\n" (fun valor1 valor2 valor3 ->
          Printf.printf "%.1f\n"
            (((2.0 *. valor1) +. (3.0 *. valor2) +. (5.0 *. valor3)) /. 10.0))
    done)
