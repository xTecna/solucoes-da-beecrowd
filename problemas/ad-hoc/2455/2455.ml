Scanf.scanf "%d %d %d %d\n" (fun p1 c1 p2 c2 ->
    let diferenca = (p2 * c2) - (p1 * c1) in
    if diferenca < 0 then Printf.printf "-1\n"
    else if diferenca == 0 then Printf.printf "0\n"
    else Printf.printf "1\n")
