teste = 1
while true
    n = gets.to_i

    if n == 0
        break
    end

    numeros = gets.chomp.split.map(&:to_i)

    resposta = -1
    for i in (1..n) do
        if i == numeros[i - 1]
            resposta = i
        end
    end

    puts format('Teste %d', teste)
    puts resposta
    puts ''

    teste += 1
end