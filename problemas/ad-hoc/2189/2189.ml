let rec leitura teste =
  try
    Scanf.scanf "%d\n" (fun n ->
        if n != 0 then (
          let resposta = ref (-1) in
		  for i = 1 to n do
		  	Scanf.scanf "%d " (fun numero -> if numero == i then resposta := numero)
		  done;
		  Printf.printf "Teste %d\n%d\n\n" teste !resposta;
          leitura (teste + 1)))
  with End_of_file -> ()

let () = leitura 1