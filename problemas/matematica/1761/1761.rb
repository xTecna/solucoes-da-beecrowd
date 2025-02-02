pi = 3.141592654
while linha = gets
  numeros = linha.chomp.split.map(&:to_f)
  a = numeros[0]
  b = numeros[1]
  c = numeros[2]

  puts "%.2f" % (5.0 * (Math.tan(a * pi / 180.0) * b + c))
end