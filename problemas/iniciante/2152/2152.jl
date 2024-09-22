using Printf

n = parse(Int, readline())
for i in 1:n
  numeros = [parse(Int, x) for x in split(readline())]
  h = numeros[1]
  m = numeros[2]
  o = numeros[3]

  if o == 1
    @printf "%02d:%02d - A porta abriu!\n" h m
  else
    @printf "%02d:%02d - A porta fechou!\n" h m
  end
end