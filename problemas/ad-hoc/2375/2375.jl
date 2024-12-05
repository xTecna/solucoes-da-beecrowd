using Printf

diametro = parse(Int, readline())

numeros = [parse(Int32, x) for x in split(readline())]
altura = numeros[1]
largura = numeros[2]
profundidade = numeros[3]

if (diametro <= altura && diametro <= largura && diametro <= profundidade)
    @printf "S\n"
else
    @printf "N\n"
end