C = gets.to_i
numeros = gets.chomp.split.map(&:to_i)

resposta = 0
for i in (0..(C - 1)) do
    resposta += numeros[i]
end

puts resposta