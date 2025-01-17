using Printf

n = parse(Int, readline())

for k = 1:n
  hamekame = readline()
  
  i = 1
  while (hamekame[i] != 'a')
	i += 1
  end

  tamanho1 = 0
  while (hamekame[i] == 'a')
    tamanho1 += 1
	i += 1
  end

  while (hamekame[i] != 'a')
	i += 1
  end

  tamanho2 = 0
  while (hamekame[i] == 'a')
    tamanho2 += 1
	i += 1
  end

  @printf "k%s\n" repeat("a", tamanho1 * tamanho2)
end