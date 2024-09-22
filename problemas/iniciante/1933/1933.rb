numeros = gets.chomp.split.map(&:to_i)
a = numeros[0]
b = numeros[1]

a == b ? (puts a) : (puts [a, b].max)
