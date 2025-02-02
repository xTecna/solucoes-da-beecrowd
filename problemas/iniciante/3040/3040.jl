using Printf

n = parse(Int, readline())

for i in 1:n
  numeros = [parse(Int, x) for x in split(readline())]
  altura = numeros[1]
  espessura = numeros[2]
  galhos = numeros[3]

  if 200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos
    @printf "Sim\n"
  else
    @printf "Nao\n"
  end
end