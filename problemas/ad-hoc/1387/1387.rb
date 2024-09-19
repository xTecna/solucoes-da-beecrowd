while (entrada = gets)
  numeros = entrada.chomp.split.map(&:to_i)
  l = numeros[0]
  r = numeros[1]

  break if l == 0 && r == 0

  puts l + r
end
