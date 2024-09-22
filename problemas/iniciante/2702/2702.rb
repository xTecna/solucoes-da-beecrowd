numeros = gets.chomp.split.map(&:to_i)
ca = numeros[0]
ba = numeros[1]
pa = numeros[2]

numeros = gets.chomp.split.map(&:to_i)
cr = numeros[0]
br = numeros[1]
pr = numeros[2]

puts ([cr - ca, 0].max + [br - ba, 0].max + [pr - pa, 0].max)