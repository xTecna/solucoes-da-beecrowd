Scanf.scanf "%d\n" (fun t ->
    let corretos = ref 0 in
    Scanf.scanf "%d" (fun opcao -> if opcao == t then corretos := !corretos + 1);
    for _ = 2 to 5 do
      Scanf.scanf " %d" (fun opcao ->
          if opcao == t then corretos := !corretos + 1)
    done;
    Printf.printf "%d\n" !corretos)
