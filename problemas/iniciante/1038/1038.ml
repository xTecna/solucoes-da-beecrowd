Scanf.scanf "%d %d" (fun codigo quantidade ->
    let precos = [| 4.00; 4.50; 5.00; 2.00; 1.50 |] in
    Printf.printf "Total: R$ %.2f\n"
      (float_of_int quantidade *. precos.(codigo - 1)))
