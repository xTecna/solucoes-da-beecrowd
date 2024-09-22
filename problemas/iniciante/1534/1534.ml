let rec leitura () =
  try
    Scanf.scanf "%d\n" (fun n ->
        for i = 0 to n - 1 do
          for j = 0 to n - 1 do
            if i == n - 1 - j then Printf.printf "2"
            else if i == j then Printf.printf "1"
            else Printf.printf "3"
          done;
          Printf.printf "\n"
        done;
        leitura ())
  with End_of_file -> ()

let () = leitura ()
