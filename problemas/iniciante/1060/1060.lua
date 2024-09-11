positivos = 0
for _ = 1, 6 do
  numero = tonumber(io.read())
  if (numero > 0) then
    positivos = positivos + 1
  end
end

print(string.format("%d valores positivos", positivos))
