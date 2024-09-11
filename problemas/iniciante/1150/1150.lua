x = tonumber(io.read(), 10)
while (true) do
  z = tonumber(io.read(), 10)
  if (z > x) then
    break
  end
end

soma = x
resposta = 1
while (soma <= z) do
  soma = soma + x + resposta
  resposta = resposta + 1
end

print(resposta)
