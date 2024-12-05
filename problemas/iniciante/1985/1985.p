var
  valor: double;
  p, codigo, q, i: int64;
  precos: array[0..5] of double;
  
begin
  precos[0] := 0.0;
  precos[1] := 1.5;
  precos[2] := 2.5;
  precos[3] := 3.5;
  precos[4] := 4.5;
  precos[5] := 5.5;
  
  read(p);

  i := 0;
  valor := 0.0;
  while i < p do
  begin
    read(codigo);
    read(q);

    valor := valor + precos[codigo - 1000] * q;
    
    i := i + 1;
  end;

  writeln(valor:0:2);
end.
