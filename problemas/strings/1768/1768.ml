let imprimeTriangulo (tamanho : int) (deslocamento : int) =
	let espacos = ref ((tamanho / 2) + deslocamento) in
	let asteriscos = ref 1 in
	while !asteriscos <= tamanho do
		for _ = 1 to !espacos do
			Printf.printf " "
		done;
		for _ = 1 to !asteriscos do
			Printf.printf "*"
		done;
		Printf.printf "\n";

		espacos := !espacos - 1;
		asteriscos := !asteriscos + 2
	done

let rec leitura () =
  try
    Scanf.scanf "%d\n" (fun n ->
        imprimeTriangulo n 0;
		imprimeTriangulo 3 (n / 2 - 1);
		Printf.printf "\n";
        leitura ())
  with End_of_file -> ()

let () = leitura ()