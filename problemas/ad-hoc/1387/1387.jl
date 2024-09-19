using Printf

while true
  numeros = [parse(Int32, x) for x in split(readline())]
  l = numeros[1]
  r = numeros[2]

  if (l == 0 && r == 0)
    break
  end

  @printf "%d\n" (l + r)
end