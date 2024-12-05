using Printf

precos = [1.5, 2.5, 3.5, 4.5, 5.5]

n = parse(Int32, readline())
valor = 0.0
for i in 1:n
  entrada = split(readline())
  numeros = [parse(Int, numero) for numero in entrada]

  global valor += precos[numeros[1] - 1000] * numeros[2]
end
@printf "%.2f\n" valor