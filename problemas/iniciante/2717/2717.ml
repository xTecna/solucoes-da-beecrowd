Scanf.scanf "%d\n" (fun n ->
    Scanf.scanf "%d %d" (fun a b ->
        if a + b <= n then Printf.printf "Farei hoje!\n"
        else Printf.printf "Deixa para amanha!\n"))
