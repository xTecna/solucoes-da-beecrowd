entrada = gets.chomp

resposta = 0
for i in 0..(entrada.length - 1) do
  resposta += entrada[i].to_i
end

puts format('%s%d', entrada, resposta % 2)
