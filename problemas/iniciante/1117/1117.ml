let rec leitura () =
  Scanf.scanf "%f\n" (fun nota ->
      if 0.0 <= nota && nota <= 10.0 then nota
      else (
        Printf.printf "nota invalida\n";
        leitura ()))
in

let nota1 = leitura () in
let nota2 = leitura () in
Printf.printf "media = %.2f\n" ((nota1 +. nota2) /. 2.0)
