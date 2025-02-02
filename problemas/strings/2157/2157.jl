using Printf

n = parse(Int, readline())
for i = 1:n
  entrada = [parse(Int, x) for x in split(readline())]
  b = entrada[1]
  e = entrada[2]

  resposta = ""
  for j = b:e
    resposta = resposta * string(j)
  end
  resposta = resposta * reverse(resposta)

  @printf "%s\n" resposta
end