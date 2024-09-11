Scanf.scanf "%f %f %f %f" (fun x1 y1 x2 y2 ->
    Printf.printf "%.4f\n" (sqrt(((x2 -. x1) *. (x2 -. x1)) +. ((y2 -. y1) *. (y2 -. y1)))))
