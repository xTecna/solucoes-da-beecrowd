Scanf.scanf "%d %d\n" (fun n m ->
    let abas = ref n in
    for _ = 0 to m - 1 do
      Scanf.scanf "%s\n" (fun acao ->
          if acao = "fechou" then abas := !abas + 1 else abas := !abas - 1)
    done;
    Printf.printf "%d\n" !abas)
