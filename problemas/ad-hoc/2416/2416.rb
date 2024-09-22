numeros = gets.chomp.split.map(&:to_i)
c = numeros[0]
n = numeros[1]

puts(c % n)
