soma = 0
quantidade = 0

while true
  idade = gets.to_i

  if idade < 0
    break
  else
    soma += idade
    quantidade += 1
  end
end

puts format('%.2f', soma.to_f / quantidade)
