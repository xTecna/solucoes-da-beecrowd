using Printf

numeros = [parse(Int, x) for x in split(readline())]
n = numeros[1]
m = numeros[2]
for i in 1:m
  acao = readline()

  if acao == "fechou"
    global n = n + 1
  else
    global n = n - 1
  end
end

@printf "%d\n" n