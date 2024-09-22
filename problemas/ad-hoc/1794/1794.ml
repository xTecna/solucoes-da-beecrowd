Scanf.scanf "%d\n" (fun n ->
    Scanf.scanf "%d %d\n" (fun la lb ->
        Scanf.scanf "%d %d\n" (fun sa sb ->
            if la <= n && n <= lb && sa <= n && n <= sb then
              Printf.printf "possivel\n"
            else Printf.printf "impossivel\n")))
