using Printf

function converteParaDecimal(n)
  resposta = 0
  potencia = 1
  fatoriais = [1, 2, 6, 24, 120]

  for i in length(n):-1:1
    resposta += parse(Int32, n[i]) * fatoriais[potencia]
    potencia += 1
  end

  return resposta
end

while true
  n = readline()

  if n == "0"
    break
  end

  @printf "%d\n" converteParaDecimal(n)
end