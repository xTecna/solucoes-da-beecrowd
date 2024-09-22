using Printf

n = parse(Int, readline())
numeros = [parse(Int, x) for x in split(readline())]

dois = 0
tres = 0
quatro = 0
cinco = 0
for i in 1:n
  if (numeros[i] % 2 == 0)
    global dois += 1
  end
  if (numeros[i] % 3 == 0)
    global tres += 1
  end
  if (numeros[i] % 4 == 0)
    global quatro += 1
  end
  if (numeros[i] % 5 == 0)
    global cinco += 1
  end
end

@printf "%d Multiplo(s) de 2\n" dois
@printf "%d Multiplo(s) de 3\n" tres
@printf "%d Multiplo(s) de 4\n" quatro
@printf "%d Multiplo(s) de 5\n" cinco