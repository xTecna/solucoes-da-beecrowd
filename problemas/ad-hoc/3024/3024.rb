n, x = gets.chomp.split.map(&:to_i)
alturas = gets.chomp.split.map(&:to_i)

resposta = 1
acumulado = 1
for i in (1...n) do
    if alturas[i] - alturas[i - 1] <= x
        acumulado += 1
    else
        resposta = [resposta, acumulado].max
        acumulado = 1
    end
end
resposta = [resposta, acumulado].max

puts resposta