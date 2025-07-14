let distancia (x1: int) (y1: int) (x2: int) (y2: int) : float = sqrt(float_of_int ((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) in
let rec leitura () =
  try
    Scanf.scanf "%d %d %d %d\n" (fun l c r1 r2 ->
	  if l == 0 && c == 0 && r1 == 0 && r2 == 0 then ()
	  else (
	    let x1 = r1 in
	    let y1 = r1 in
	    let x2 = l - r2 in
	    let y2 = c - r2 in
	    let dist = distancia x1 y1 x2 y2 in
	    if l < 2 * r1 || c < 2 * r1 || l < 2 * r2 || c < 2 * r2 || dist < float_of_int (r1 + r2) then Printf.printf "N\n"
	      else Printf.printf "S\n";
        leitura ()))
  with End_of_file -> () in
leitura ()
