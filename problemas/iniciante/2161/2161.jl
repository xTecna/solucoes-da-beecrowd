using Printf

n = parse(Int, readline())

resposta = 0.0
if n == 0
  global resposta = 3.0
else
  global resposta = 6.0
  for i in 2:n
    global resposta = 6.0 + 1.0 / resposta
  end
  global resposta = 3.0 + 1.0 / resposta
end

@printf "%.10f\n" resposta