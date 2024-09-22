Scanf.scanf "%d %d %d\n" (fun ca ba pa ->
    Scanf.scanf "%d %d %d\n" (fun cr br pr ->
        Printf.printf "%d\n"
          (max (cr - ca) 0 + max (br - ba) 0 + max (pr - pa) 0)))
