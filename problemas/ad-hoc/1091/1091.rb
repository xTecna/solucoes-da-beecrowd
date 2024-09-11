while (entrada = gets)
  k = entrada.to_i

  break if k == 0

  numeros = gets.chomp.split.map(&:to_i)
  n = numeros[0]
  m = numeros[1]

  for i in (1..k) do
    numeros = gets.chomp.split.map(&:to_i)
    x = numeros[0]
    y = numeros[1]

    x -= n
    y -= m

    if (x > 0) and (y > 0)
      puts 'NE'
    elsif (x > 0) and (y < 0)
      puts 'SE'
    elsif (x < 0) and (y > 0)
      puts 'NO'
    elsif (x < 0) and (y < 0)
      puts 'SO'
    else
      puts 'divisa'
    end
  end
end
