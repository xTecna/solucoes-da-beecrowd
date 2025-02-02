let rec leitura () =
  try
    Scanf.scanf "%d\n" (fun n ->
			if (n != 0) then (
				let resposta = ref "" in
				let menor_ano = ref 9999 in
				for i = 1 to n do
					Scanf.scanf "%s %d %d\n" (fun planeta ano tempo ->
						if (ano - tempo < !menor_ano) then (
							menor_ano := ano - tempo;
							resposta := planeta));
				done;
				Printf.printf "%s\n" !resposta;
				leitura ()))
  with End_of_file -> ()

let () = leitura ()
