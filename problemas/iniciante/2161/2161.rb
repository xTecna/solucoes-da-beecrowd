n = gets.to_i

resposta = 0.0
if n == 0
  resposta = 3.0
else
  resposta = 6.0
  for _ in 1..(n - 1) do
    resposta = 6.0 + 1.0 / resposta
  end
  resposta = 3.0 + 1.0 / resposta
end

puts format('%.10f', resposta)
