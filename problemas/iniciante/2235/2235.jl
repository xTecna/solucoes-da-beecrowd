using Printf

numeros = [parse(Int, x) for x in split(readline())]
a = numeros[1]
b = numeros[2]
c = numeros[3]

if (a == b || a == c || b == c || (a + b) == c || (a + c) == b || (b + c) == a)
  @printf "S\n"
else
  @printf "N\n"
end