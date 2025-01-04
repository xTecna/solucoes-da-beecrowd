let rec leitura () =
  try
    let pi = 3.14 in
    Scanf.scanf "%f " (fun v ->
        Scanf.scanf "%f " (fun d ->
            let raio = d /. 2.0 in
            let area = pi *. raio *. raio in
            let altura = v /. area in
            Printf.printf "ALTURA = %.2f\n" altura;
            Printf.printf "AREA = %.2f\n" area));
    leitura ()
  with End_of_file -> ()

let () = leitura ()
