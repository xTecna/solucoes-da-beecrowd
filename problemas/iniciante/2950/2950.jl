using Printf

numeros = [parse(Int, x) for x in split(readline())]
n = numeros[1]
x = numeros[2]
y = numeros[3]

@printf "%.2f\n" (n / (x + y))