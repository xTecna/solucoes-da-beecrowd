while (entrada = gets)
  n = entrada.to_i

  break if n == 0

  for i in (1..n) do
    opcao = -1
    corretos = 0

    cores = gets.chomp.split.map(&:to_i)
    for k in (0..4) do
      if cores[k] <= 127
        opcao = k
        corretos += 1
      end
    end

    if corretos == 1
      puts ('A'.ord + opcao).chr
    else
      puts '*'
    end
  end
end
