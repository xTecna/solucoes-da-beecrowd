while entrada = gets
  numeros = entrada.chomp.split.map(&:to_i)
  v = numeros[0]
  t = numeros[1]

  puts(v * 2 * t)
end
