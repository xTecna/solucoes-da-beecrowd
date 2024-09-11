let dentro = ref 0 in
let fora = ref 0 in
Scanf.scanf "%d\n" (fun n ->
    for _ = 1 to n do
      Scanf.scanf "%d\n" (fun numero ->
          if numero >= 10 && numero <= 20 then dentro := !dentro + 1
          else fora := !fora + 1)
    done);

Printf.printf "%d in\n" !dentro;
Printf.printf "%d out\n" !fora
