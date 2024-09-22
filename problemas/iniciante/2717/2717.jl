using Printf

n = parse(Int, readline())
numeros = [parse(Int, x) for x in split(readline())]
a = numeros[1]
b = numeros[2]

if a + b <= n
  @printf "Farei hoje!\n"
else
  @printf "Deixa para amanha!\n"
end