Scanf.scanf "%c" (fun l ->
    Printf.printf "%d\n" (Char.code l - Char.code 'A' + 1))
