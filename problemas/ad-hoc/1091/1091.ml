let processa k =
  Scanf.scanf "%d %d\n" (fun n m ->
      for _ = 1 to k do
        Scanf.scanf "%d %d\n" (fun x y ->
            let a = x - n in
            let b = y - m in
            if a > 0 && b > 0 then Printf.printf "NE\n"
            else if a > 0 && b < 0 then Printf.printf "SE\n"
            else if a < 0 && b > 0 then Printf.printf "NO\n"
            else if a < 0 && b < 0 then Printf.printf "SO\n"
            else Printf.printf "divisa\n")
      done)

let rec leitura () =
  try
    Scanf.scanf "%d\n" (fun n ->
        if n != 0 then (
          processa n;
          leitura ()))
  with End_of_file -> ()

let () = leitura ()
