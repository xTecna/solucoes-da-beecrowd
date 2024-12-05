Scanf.scanf "%d\n" (fun n ->
    let resposta = ref 0 in
    for _ = 1 to n do
        Scanf.scanf "%d %d\n" (fun v t ->
            resposta := !resposta + (v * t))
    done;
    Printf.printf "%d\n" !resposta)
