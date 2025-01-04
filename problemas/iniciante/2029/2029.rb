pi = 3.14

while entrada = gets
  v = entrada.to_f
  d = gets.to_f / 2.0

  area = pi * d * d
  altura = v / area

  puts format('ALTURA = %.2f', altura)
  puts format('AREA = %.2f', area)
end
