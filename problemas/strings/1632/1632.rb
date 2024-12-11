def variacoes(letra)
    if letra == 'a' or letra == 'e' or letra == 'i' or letra == 'o' or letra == 's'
        return 3
    else
        return 2
    end
end

n = gets.to_i
for i in (1..n) do
    senha = gets.chomp.downcase

    resposta = 1
    for j in (0..senha.length-1)
        resposta *= variacoes(senha[j])
    end

    puts resposta
end