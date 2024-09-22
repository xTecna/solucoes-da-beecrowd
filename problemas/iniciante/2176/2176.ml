Scanf.scanf "%s" (fun s ->
    let soma = ref 0 in
    for i = 0 to String.length s - 1 do
      soma := !soma + int_of_char s.[i]
    done;
    Printf.printf "%s%d\n" s (!soma mod 2))
