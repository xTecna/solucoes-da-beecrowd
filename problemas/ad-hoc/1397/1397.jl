using Printf

while true
  n = parse(Int32, readline())

  if n == 0
    break
  end

  jogador1 = 0
  jogador2 = 0
  for i in 1:n
    numeros = [parse(Int32, x) for x in split(readline())]
    a = numeros[1]
    b = numeros[2]

    if a > b
      jogador1 += 1
    else
      if a < b
        jogador2 += 1
      end
    end
  end

  @printf "%d %d\n" jogador1 jogador2
end