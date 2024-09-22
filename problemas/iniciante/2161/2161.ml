Scanf.scanf "%d\n" (fun n ->
    let resposta = ref 0.0 in
    if n = 0 then resposta := 3.0
    else (
      resposta := 6.0;
      for _ = 2 to n do
        resposta := 6.0 +. (1.0 /. !resposta)
      done;
      resposta := 3.0 +. (1.0 /. !resposta));
    Printf.printf "%.10f\n" !resposta)
