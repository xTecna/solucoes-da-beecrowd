using Printf

entrada = split(readline())
numeros = [parse(Int, numero) for numero in entrada]
r = numeros[1]
l = numeros[2]

pi = 3.1415
v = 4.0 * pi * r * r * r / 3.0

@printf "%d\n" floor(l / v)