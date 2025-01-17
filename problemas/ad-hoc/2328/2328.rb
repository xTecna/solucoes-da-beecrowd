N = gets.to_i
divisoes = gets.chomp.split.map(&:to_i)

resposta = 0
for i in (0..(N - 1)) do
    resposta += divisoes[i]
end

puts (resposta - N)