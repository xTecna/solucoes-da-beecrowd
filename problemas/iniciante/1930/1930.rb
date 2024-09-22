tomadas = gets.chomp.split.map(&:to_i)

soma = 0
for i in 0..3 do
  soma += tomadas[i]
end

puts(soma - 3)
