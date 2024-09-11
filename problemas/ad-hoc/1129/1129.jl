using Printf

while true
  n = parse(Int32, readline())

  if n == 0
    break
  end

  for i in 1:n
    opcao = -1
    corretos = 0
    
    cores = [parse(Int32, x) for x in split(readline())]
    for k in 1:5
      if cores[k] <= 127
        opcao = k
        corretos += 1
      end
    end

    if corretos == 1
      @printf "%c\n" (Char(65 + opcao - 1))
    else
      @printf "*\n"
    end
  end
end