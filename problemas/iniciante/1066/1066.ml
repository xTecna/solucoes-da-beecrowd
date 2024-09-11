let pares = ref 0 in
let impares = ref 0 in
let positivos = ref 0 in
let negativos = ref 0 in

for _ = 0 to 4 do
  Scanf.scanf "%d\n" (fun numero ->
      if numero mod 2 == 0 then pares := !pares + 1 else impares := !impares + 1;

      if numero > 0 then positivos := !positivos + 1
      else if numero < 0 then negativos := !negativos + 1)
done;

Printf.printf "%d valor(es) par(es)\n" !pares;
Printf.printf "%d valor(es) impar(es)\n" !impares;
Printf.printf "%d valor(es) positivo(s)\n" !positivos;
Printf.printf "%d valor(es) negativo(s)\n" !negativos