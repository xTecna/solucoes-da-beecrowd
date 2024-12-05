n = gets.to_i

resposta = 0
for i in (1..n) do
    latas, copos = gets.chomp.split.map(&:to_i)
    if latas > copos
        resposta += copos
    end
end

puts resposta