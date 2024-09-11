var
    codigo: int64;
    quantidade: int64;
    precos: array[0..4] of double = (4.00, 4.50, 5.00, 2.00, 1.50);

begin
    read(codigo);
    read(quantidade);

    writeln('Total: R$ ', (quantidade * precos[codigo - 1]):0:2)
end.
