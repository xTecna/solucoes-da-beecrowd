using Printf

entrada = split(readline())
numeros = [parse(Int64, elemento) for elemento in entrada]

maior = numeros[1]
for i = 2:length(numeros)
    global maior = max(maior, numeros[i])
end

@printf "%d\n" maior
