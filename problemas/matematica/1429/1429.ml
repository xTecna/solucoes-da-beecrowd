let converteParaDecimal (n : string) : int =
  let resposta = ref 0 in
  let potencia = ref 0 in
  let fatoriais = [| 1; 2; 6; 24; 120 |] in
  for i = String.length n - 1 downto 0 do
    resposta :=
      !resposta + ((int_of_char n.[i] - int_of_char '0') * fatoriais.(!potencia));
    potencia := !potencia + 1
  done;
  !resposta

let leitura () =
  let rec loop () =
    match
      try Some (Scanf.scanf "%s\n" (fun n -> n)) with End_of_file -> None
    with
    | Some n ->
        if n <> "0" then (
          Printf.printf "%d\n" (converteParaDecimal n);
          loop ())
    | None -> ()
  in
  loop ()
;;

leitura ()