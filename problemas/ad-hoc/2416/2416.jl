using Printf

numeros = [parse(Int, x) for x in split(readline())]
c = numeros[1]
n = numeros[2]

@printf "%d\n" (c % n)