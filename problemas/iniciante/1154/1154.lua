soma = 0
q = 0
while true do
  idade = tonumber(io.read(), 10)

  if (idade < 0) then
    break
  end

  soma = soma + idade
  q = q + 1
end

print(string.format("%.2f", soma / q))
