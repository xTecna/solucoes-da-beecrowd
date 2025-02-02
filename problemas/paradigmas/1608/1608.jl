using Printf

t = parse(Int, readline())
for _ in 1:t
  numeros = [parse(Int, x) for x in split(readline())]
  d = numeros[1]
  i = numeros[2]
  b = numeros[3]

  precos = [parse(Int, x) for x in split(readline())]

  resposta = 0
  for _ in 1:b
      bolo = [parse(Int, x) for x in split(readline())]

      custo = 0
      for j in 2:2:(length(bolo) - 1)
          custo += precos[bolo[j] + 1] * bolo[j + 1]
      end

      resposta = max(resposta, div(d, custo))
  end

  @printf "%d\n" resposta
end
