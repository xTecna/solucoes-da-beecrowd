let alcool = ref 0 in
let gasolina = ref 0 in
let diesel = ref 0 in
let () =
  try
    while true do
      Scanf.scanf "%d\n" (fun codigo ->
          if codigo = 1 then alcool := !alcool + 1
          else if codigo = 2 then gasolina := !gasolina + 1
          else if codigo = 3 then diesel := !diesel + 1
          else if codigo = 4 then raise End_of_file)
    done
  with End_of_file -> ()
in
Printf.printf "MUITO OBRIGADO\n";
Printf.printf "Alcool: %d\n" !alcool;
Printf.printf "Gasolina: %d\n" !gasolina;
Printf.printf "Diesel: %d\n" !diesel
