t = gets.to_i

respostas = gets.chomp.split.map(&:to_i)
contador = 0
for i in 0..4 do
  contador += 1 if respostas[i] == t
end

puts contador
