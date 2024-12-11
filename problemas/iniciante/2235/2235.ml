Scanf.scanf "%d %d %d" (fun a b c ->
    if a == b || a == c || b == c || a + b == c || a + c == b || b + c == a then
      Printf.printf "S\n"
    else Printf.printf "N\n")
