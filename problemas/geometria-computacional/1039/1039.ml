let distancia (x1: int) (y1: int) (x2: int) (y2: int) : float = sqrt(float_of_int ((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) in
let rec leitura () =
  try
    Scanf.scanf "%d %d %d %d %d %d\n" (fun r1 x1 y1 r2 x2 y2 ->
      let dist = distancia x1 y1 x2 y2 in
		  if dist <= float_of_int (r1 - r2) then Printf.printf "RICO\n"
		  else Printf.printf "MORTO\n";
      leitura ())
  with End_of_file -> () in
leitura ()
