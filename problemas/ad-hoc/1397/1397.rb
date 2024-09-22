while (entrada = gets)
  n = entrada.to_i

  break if n == 0

  jogador1 = 0
  jogador2 = 0
  for i in (1..n) do
    numeros = gets.chomp.split.map(&:to_i)
    a = numeros[0]
    b = numeros[1]

    if a > b
      jogador1 += 1
    elsif b > a
      jogador2 += 1
    end
  end

  puts format('%d %d', jogador1, jogador2)
end
