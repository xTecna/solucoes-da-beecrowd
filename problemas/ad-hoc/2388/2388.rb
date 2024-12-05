n = gets.to_i

resposta = 0
for _ in (1..n) do
    numeros = gets.chomp.split.map(&:to_i)
    resposta += numeros[0] * numeros[1]
end

puts resposta