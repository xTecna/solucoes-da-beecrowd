Scanf.scanf "%d\n" (fun n ->
    let resposta = ref 0.0 in
    if n = 0 then resposta := 1.0
    else (
      resposta := 2.0;
      for _ = 2 to n do
        resposta := 2.0 +. (1.0 /. !resposta)
      done;
      resposta := 1.0 +. (1.0 /. !resposta));
    Printf.printf "%.10f\n" !resposta)
