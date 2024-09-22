using Printf

t = parse(Int, readline())
numeros = [parse(Int, x) for x in split(readline())]

corretos = 0
for i in 1:5
  if (numeros[i] == t)
    global corretos += 1
  end
end
@printf "%d\n" corretos