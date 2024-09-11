x = gets.to_i

while true
  z = gets.to_i
  break if z > x
end

resposta = 1
soma = x

while soma <= z
  soma += x + resposta
  resposta += 1
end

puts resposta
