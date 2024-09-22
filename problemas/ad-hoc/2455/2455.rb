numeros = gets.chomp.split.map(&:to_i)
p1 = numeros[0]
c1 = numeros[1]
p2 = numeros[2]
c2 = numeros[3]

diferenca = p2 * c2 - p1 * c1

if diferenca < 0
  puts(-1)
elsif diferenca > 0
  puts 1
else
  puts 0
end
