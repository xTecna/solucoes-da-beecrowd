var
  senha: string;

begin
  senha := '';
  while senha <> '2002' do
  begin
    readln(senha);
    if senha <> '2002' then
      writeln('Senha Invalida');
  end;
  writeln('Acesso Permitido');
end.