let rec mdc (a: int) (b: int) : int =
	if b = 0 then
		a
	else
		mdc b (a mod b)

let rec leitura () =
  try
    Scanf.scanf "%d %d\n" (fun x y ->
		let m = mdc x y in
        Printf.printf "%d\n" (2 * ((x / m) + (y / m)));
        leitura ())
  with End_of_file -> ()

let () = leitura ()