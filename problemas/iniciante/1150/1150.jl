using Printf

x = parse(Int, readline())
z = x
while (z <= x)
  global z = parse(Int, readline())
end

soma = x
resposta = 1
while (soma <= z)
  global soma += x + resposta
  global resposta += 1
end

@printf "%d\n" resposta