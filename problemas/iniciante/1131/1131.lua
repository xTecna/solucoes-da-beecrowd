inter = 0
gremio = 0
empate = 0
while true do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end
  i = tonumber(entrada[1], 10)
  g = tonumber(entrada[2], 10)

  if (i < g) then
    gremio = gremio + 1
  else
    if (i == g) then
      empate = empate + 1
    else
      inter = inter + 1
    end
  end

  codigo = 0
  while (codigo ~= 1) and (codigo ~= 2) do
    print("Novo grenal (1-sim 2-nao)")
    codigo = tonumber(io.read(), 10)
  end

  if (codigo == 2) then
    break
  end
end

print(string.format("%d grenais", inter + gremio + empate))
print(string.format("Inter:%d", inter))
print(string.format("Gremio:%d", gremio))
print(string.format("Empates:%d", empate))

if (inter > gremio) and (inter > empate) then
  print("Inter venceu mais")
else
  if (gremio > inter) and (gremio > empate) then
    print("Gremio venceu mais")
  else
    print("Nao houve vencedor")
  end
end
