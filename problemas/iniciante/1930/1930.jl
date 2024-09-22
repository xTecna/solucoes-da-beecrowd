using Printf

numeros = [parse(Int, x) for x in split(readline())]

soma = 0
for i in 1:4
  global soma += numeros[i]
end
@printf "%d\n" (soma - 3)