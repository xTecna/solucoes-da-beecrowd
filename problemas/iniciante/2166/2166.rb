n = gets.to_i

resposta = 0.0
if n == 0
  resposta = 1.0
else
  resposta = 2.0
  for _ in 1..(n - 1) do
    resposta = 2.0 + 1.0 / resposta
  end
  resposta = 1.0 + 1.0 / resposta
end

puts format('%.10f', resposta)
