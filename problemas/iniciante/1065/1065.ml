let pares = ref 0 in

for _ = 0 to 4 do
  Scanf.scanf "%d\n" (fun numero ->
      if numero mod 2 == 0 then pares := !pares + 1)
done;

Printf.printf "%d valores pares\n" !pares
