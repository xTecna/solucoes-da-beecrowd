pares = 0
for i = 1, 5 do
  numero = tonumber(io.read(), 10)
  if (numero % 2 == 0) then
    pares = pares + 1
  end
end

print(string.format("%d valores pares", pares))
