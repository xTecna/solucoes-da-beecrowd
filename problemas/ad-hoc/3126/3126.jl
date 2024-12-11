using Printf

c = parse(Int, readline())
numeros = [parse(Int, x) for x in split(readline())]

resposta = 0
for i in 1:c
	global resposta += numeros[i]
end

@printf "%d\n" resposta