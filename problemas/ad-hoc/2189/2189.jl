using Printf

teste = 1
while true
    n = parse(Int, readline())

    if n == 0
        break
    end

    numeros = [parse(Int32, x) for x in split(readline())]

	resposta = -1
    for i in 1:n
        if i == numeros[i]
            resposta = i
        end
    end

    @printf "Teste %d\n" teste
    @printf "%d\n\n" resposta

    global teste += 1
end