n = tonumber(io.read(), 10)

resposta = 0.0
if (n == 0) then
  resposta = 3.0
else
  resposta = 6.0
  for _ = 2, n do
    resposta = 6.0 + 1.0 / resposta
  end
  resposta = 3.0 + 1.0 / resposta
end

print(string.format("%.10f", resposta))
