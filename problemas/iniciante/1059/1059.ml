let rec imprime (x: int) (fim: int) =
  if x <= fim then begin
    Printf.printf "%d\n" x;
    imprime (x + 2) fim
  end;;

imprime 2 100
