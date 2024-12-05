numeros = gets.chomp.split.map(&:to_i)
h = numeros[0]
p = numeros[1]

puts format('%.2f', h.to_f / p)
