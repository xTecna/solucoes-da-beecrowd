using Printf

numeros = [parse(Int, x) for x in split(readline())]
ca = numeros[1]
ba = numeros[2]
pa = numeros[3]

numeros = [parse(Int, x) for x in split(readline())]
cr = numeros[1]
br = numeros[2]
pr = numeros[3]

@printf "%d\n" (max(cr - ca, 0) + max(br - ba, 0) + max(pr - pa, 0))