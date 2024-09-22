Scanf.scanf "%d\n" (fun n ->
    let dois = ref 0 in
    let tres = ref 0 in
    let quatro = ref 0 in
    let cinco = ref 0 in
    Scanf.scanf "%d" (fun numero ->
        if numero mod 2 == 0 then dois := !dois + 1;
        if numero mod 3 == 0 then tres := !tres + 1;
        if numero mod 4 == 0 then quatro := !quatro + 1;
        if numero mod 5 == 0 then cinco := !cinco + 1);
    for _ = 2 to n do
      Scanf.scanf " %d" (fun numero ->
          if numero mod 2 == 0 then dois := !dois + 1;
          if numero mod 3 == 0 then tres := !tres + 1;
          if numero mod 4 == 0 then quatro := !quatro + 1;
          if numero mod 5 == 0 then cinco := !cinco + 1)
    done;
    Printf.printf "%d Multiplo(s) de 2\n" !dois;
    Printf.printf "%d Multiplo(s) de 3\n" !tres;
    Printf.printf "%d Multiplo(s) de 4\n" !quatro;
    Printf.printf "%d Multiplo(s) de 5\n" !cinco)
