using Printf

numeros = [parse(Int, x) for x in split(readline())]
for i in 1:4
  if numeros[i] == 1
    @printf "%d\n" i
    break
  end
end