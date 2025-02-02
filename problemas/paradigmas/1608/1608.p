var
  t, k, d, i, b, m, x, resposta, q, custo, n, y: int64;
  precos: array[0..100] of int64;

begin
  read(t);

  k := 0;
  while k < t do
  begin
    read(d);
    read(i);
    read(b);

    m := 0;
    while m < i do
    begin
      read(precos[m]);
      m := m + 1;
    end;

    m := 0;
    resposta := 0;
    while m < b do
    begin
      read(q);

      n := 0;
      custo := 0;
      while n < q do
      begin
        read(x);
        read(y);
        custo := custo + precos[x] * y;
        n := n + 1;
      end;

      if (d div custo > resposta) then
        resposta := d div custo;

      m := m + 1;
    end;

    writeln(resposta);

    k := k + 1;
  end;
end.
