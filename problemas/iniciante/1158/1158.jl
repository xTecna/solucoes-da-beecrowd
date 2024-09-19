function somaPA(a1, an, n)
  return div((a1 + an) * n, 2)
end

n = parse(Int, readline())
for i in 1:n
  numeros = [parse(Int, x) for x in split(readline())]
  x = numeros[1]
  y = numeros[2]

  x += 1 - (abs(x) % 2)
  println(somaPA(x, x + (2 * (y - 1)), y))
end