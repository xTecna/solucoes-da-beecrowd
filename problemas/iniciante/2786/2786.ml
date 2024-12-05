Scanf.scanf "%d\n%d" (fun l c ->
    Printf.printf "%d\n" ((l * c) + ((l - 1) * (c - 1)));
    Printf.printf "%d\n" (2 * (l + c - 2)))
