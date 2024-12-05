using Printf

entrada = split(readline())
numeros = [parse(Int, numero) for numero in entrada]
h = numeros[1]
p = numeros[2]

@printf "%.2f\n" (h/p)