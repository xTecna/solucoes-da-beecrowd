while true
    n = gets.to_i
    if n == 0
        break
    end

    resposta = ""
    menor_ano = 9999
    for i in (1..n) do
        partes = gets.chomp.split
        planeta = partes[0]
        ano = partes[1].to_i
        tempo = partes[2].to_i

        if ano - tempo < menor_ano
            resposta = planeta
            menor_ano = ano - tempo
        end
    end

    puts resposta
end