using Printf

n = parse(Int, readline())
for i in 1:n
  numeros = [parse(Float64, x) for x in split(readline())]
  x = numeros[1]
  y = numeros[2]
  
  @printf "%d cm2\n" div(x * y, 2)
end