using Printf

n = parse(Int, readline())
for i in 1:n
  numeros = [parse(Int, x) for x in split(readline())]
  @printf "%d\n" (numeros[1] + numeros[2])
end