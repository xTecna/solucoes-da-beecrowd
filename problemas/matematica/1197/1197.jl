using Printf

while !eof(stdin)
  numeros = [parse(Float64, x) for x in split(readline())]
  v = numeros[1]
  t = numeros[2]

  @printf "%d\n" (v * 2 * t)
end
