while (entrada = gets)
  numeros = entrada.chomp.split.map(&:to_i)
  m = numeros[0]
  n = numeros[1]

  break if m == 0 && n == 0

  soma = (m + n).to_s.gsub('0', '')
  puts soma
end
