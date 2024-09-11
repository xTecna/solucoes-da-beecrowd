let positivos = ref 0 in

for _ = 0 to 5 do
  Scanf.scanf "%f\n" (fun numero ->
    if numero > 0.0 then positivos := !positivos + 1
  )
done;

Printf.printf "%d valores positivos\n" !positivos
