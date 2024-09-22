using Printf

n = parse(Int, readline())

numeros = [parse(Int, x) for x in split(readline())]
la = numeros[1]
lb = numeros[2]

numeros = [parse(Int, x) for x in split(readline())]
sa = numeros[1]
sb = numeros[2]

if (la <= n && n <= lb && sa <= n && n <= sb)
  @printf "possivel\n"
else
  @printf "impossivel\n"
end