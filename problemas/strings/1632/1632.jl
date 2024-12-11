using Printf

function variacoes(letra)
    if letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'S'
        return 3
    else
        return 2
    end
end

n = parse(Int, readline())
for i in 1:n
    senha = uppercase(readline())

    resposta = 1
    for j in 1:length(senha)
        resposta *= variacoes(senha[j])
    end

	@printf "%d\n" resposta
end