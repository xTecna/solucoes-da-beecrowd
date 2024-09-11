var
  idade, soma, quantidade: int64;

begin
  soma := 0;
  quantidade := 0;
  while true do
  begin
    read(idade);

    if idade < 0 then
      break;

    soma := soma + idade;
    quantidade := quantidade + 1;
  end;

  writeln((soma/quantidade):0:2);
end.