Scanf.scanf "%d\n%d\n%d" (fun m a b ->
    let c = m - a - b in
    Printf.printf "%d\n" (max a (max b c)))
