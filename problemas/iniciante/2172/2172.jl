using Printf

while true
  numeros = [parse(Int64, x) for x in split(readline())]
  x = numeros[1]
  m = numeros[2]

  if x == 0 && m == 0
    break
  end

  @printf "%d\n" (x * m)
end