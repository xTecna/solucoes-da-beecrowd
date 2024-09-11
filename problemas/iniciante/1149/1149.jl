using Printf

function somaPA(a1, an, n)
  return div((a1 + an) * n, 2)
end

numeros = [parse(Int, x) for x in split(readline())]

a = numeros[1]
i = 2
while (numeros[i] <= 0)
  global i = i + 1
end
n = numeros[i]

@printf "%d\n" somaPA(a, a + n - 1, n)