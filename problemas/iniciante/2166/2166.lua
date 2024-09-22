n = tonumber(io.read(), 10)

resposta = 0.0
if (n == 0) then
  resposta = 1.0
else
  resposta = 2.0
  for _ = 2, n do
    resposta = 2.0 + 1.0 / resposta
  end
  resposta = 1.0 + 1.0 / resposta
end

print(string.format("%.10f", resposta))
