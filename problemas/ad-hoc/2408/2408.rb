numeros = gets.chomp.split.map(&:to_i)
numeros.sort!

puts numeros[1]