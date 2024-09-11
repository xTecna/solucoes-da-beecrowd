let processa questoes =
  for _ = 1 to questoes do
    let linha = read_line () in
    let numeros = String.split_on_char ' ' linha |> Array.of_list in
    let opcao = ref (-1) in
    let corretos = ref 0 in
    for i = 0 to 4 do
      let cor = int_of_string numeros.(i) in
      if cor <= 127 then (
        opcao := i;
        corretos := !corretos + 1)
    done;
    if !corretos == 1 then
      Printf.printf "%c\n" (Char.chr (Char.code 'A' + !opcao))
    else Printf.printf "*\n"
  done

let rec leitura () =
  try
    let questoes = int_of_string (read_line ()) in
    if questoes > 0 then (
      processa questoes;
      leitura ())
  with End_of_file -> ()

let () = leitura ()