using Printf

t = parse(Int, readline())

for i in 1:t
  numeros = [parse(Int, x) for x in split(readline())]
  n = numeros[1]
  k = numeros[2]

  @printf "%d\n" (div(n, k) + n % k)
end