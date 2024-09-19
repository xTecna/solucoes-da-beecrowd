Scanf.scanf "%s\n" (fun t ->
    let media = ref 0.0 in
    let quantidade = ref 0 in
    for i = 0 to 11 do
      for j = 0 to 11 do
        Scanf.scanf "%f\n" (fun numero ->
            if i > 6 && j > 11 - i && j < i then (
              media := !media +. numero;
              quantidade := !quantidade + 1))
      done
    done;
    if t = "M" then media := !media /. float_of_int !quantidade;
    Printf.printf "%.1f\n" !media)
