Scanf.scanf "%d\n" (fun c ->
    let resposta = ref 0 in
    Scanf.scanf "%d" (fun numero -> resposta := numero);
    for _ = 2 to c do
        Scanf.scanf " %d" (fun numero -> resposta := !resposta + numero)
    done;
    Printf.printf "%d\n" !resposta)
