n = tonumber(io.read(), 10)

levadas = 0
criancas = {}
comportadas = 0
for _ = 1, n do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end
  comportamento = entrada[1]
  crianca = entrada[2]

  if (comportamento == '+') then
    comportadas = comportadas + 1
  else
    levadas = levadas + 1
  end

  table.insert(criancas, crianca)
end

table.sort(criancas)

for i = 1, n do
  print(criancas[i])
end

print(string.format('Se comportaram: %d | Nao se comportaram: %d', comportadas, levadas))
