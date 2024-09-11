let () =
  try
    while true do
      Scanf.scanf "%d %d\n" (fun x y ->
          if x = 0 || y = 0 then raise End_of_file
          else if x > 0 then
            if y > 0 then Printf.printf "primeiro\n"
            else Printf.printf "quarto\n"
          else if y > 0 then Printf.printf "segundo\n"
          else Printf.printf "terceiro\n")
    done
  with End_of_file -> ()
