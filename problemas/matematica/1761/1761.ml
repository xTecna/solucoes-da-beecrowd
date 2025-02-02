let rec leitura () =
  try
    Scanf.scanf "%f %f %f\n" (fun a b c ->
				let pi = 3.141592654 in
        Printf.printf "%.2f\n" (5.0 *. (tan(a *. pi /. 180.0) *. b +. c));
        leitura ())
  with End_of_file -> ()

let () = leitura ()