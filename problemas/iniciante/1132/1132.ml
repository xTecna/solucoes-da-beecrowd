Scanf.scanf "%d\n%d" (fun x y ->
    let a = min x y in
    let b = max x y in
    let soma = ref 0 in
    for i = a to b do
      if i mod 13 != 0 then soma := !soma + i
    done;
    Printf.printf "%d\n" !soma)
