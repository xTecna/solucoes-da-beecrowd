using Printf

numeros = [parse(Int, x) for x in split(readline())]
@printf "%d\n" max(numeros[1], numeros[2])