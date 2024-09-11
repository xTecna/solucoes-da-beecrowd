while true do
  Scanf.scanf "%d %d\n" (fun x y ->
      if x == y then exit 0;
      if x < y then Printf.printf "Crescente\n"
      else Printf.printf "Decrescente\n")
done