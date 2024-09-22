let rec leitura () =
  try
    Scanf.scanf "%d %d\n" (fun m n ->
        if m != 0 && n != 0 then (
          let soma = string_of_int (m + n) in
          let resposta = ref "" in
          for i = 0 to String.length soma - 1 do
            if soma.[i] <> '0' then
              resposta := !resposta ^ Char.escaped soma.[i]
          done;
          Printf.printf "%s\n" !resposta;
          leitura ()))
  with End_of_file -> ()

let () = leitura ()
