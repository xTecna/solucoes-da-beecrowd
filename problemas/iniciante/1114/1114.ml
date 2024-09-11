while true do
  Scanf.scanf "%d\n" (fun senha ->
    if senha = 2002 then begin
      Printf.printf "Acesso Permitido\n";
      exit 0
    end else
      Printf.printf "Senha Invalida\n";
  )
done;
