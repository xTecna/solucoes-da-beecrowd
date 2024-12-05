let precos = [| 0.0; 1.5; 2.5; 3.5; 4.5; 5.5 |] in
Scanf.scanf "%d\n" (fun p ->
    let valor = ref 0.0 in
    for _ = 1 to p do
      Scanf.scanf "%d %d\n" (fun codigo q ->
          valor := !valor +. (precos.(codigo - 1000) *. float_of_int q))
    done;
    Printf.printf "%.2f\n" !valor)
