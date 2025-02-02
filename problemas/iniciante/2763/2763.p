var
  cpf: string;

begin
  readln(cpf);

  writeln(Copy(cpf, 1, 3));
  writeln(Copy(cpf, 5, 3));
  writeln(Copy(cpf, 9, 3));
  writeln(Copy(cpf, 13, 2));
end.
