using Printf

n = parse(Int, readline())

menor_preco = 1000.0
for i = 1:n
  entrada = [parse(Float64, x) for x in split(readline())]
  p = entrada[1]
  g = entrada[2]

  global menor_preco = min(menor_preco, p / g)
end

@printf "%.2f\n" (1000.0 * menor_preco)