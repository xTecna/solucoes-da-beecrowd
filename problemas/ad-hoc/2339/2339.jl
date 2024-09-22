using Printf

numeros = [parse(Int, x) for x in split(readline())]
c = numeros[1]
p = numeros[2]
f = numeros[3]

if p >= c * f
  @printf "S\n"
else
  @printf "N\n"
end