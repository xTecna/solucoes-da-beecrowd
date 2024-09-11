pares = 0
impares = 0
positivos = 0
negativos = 0
for i = 1, 5 do
  numero = tonumber(io.read(), 10)
  if (numero % 2 == 0) then
    pares = pares + 1
  else
    impares = impares + 1
  end
  if (numero > 0) then
    positivos = positivos + 1
  end
  if (numero < 0) then
    negativos = negativos + 1
  end
end

print(string.format("%d valor(es) par(es)", pares))
print(string.format("%d valor(es) impar(es)", impares))
print(string.format("%d valor(es) positivo(s)", positivos))
print(string.format("%d valor(es) negativo(s)", negativos))
