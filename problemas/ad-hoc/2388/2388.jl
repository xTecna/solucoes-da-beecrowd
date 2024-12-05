using Printf

n = parse(Int, readline())

resposta = 0
for i in 1:n
    entrada = split(readline())
    numeros = [parse(Int64, elemento) for elemento in entrada]

    global resposta += numeros[1] * numeros[2]
end

@printf "%d\n" resposta