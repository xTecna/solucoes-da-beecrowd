Scanf.scanf "%d\n%d\n" (fun l c ->
    Printf.printf "%d\n" (1 - (l mod 2 lxor (c mod 2))))
