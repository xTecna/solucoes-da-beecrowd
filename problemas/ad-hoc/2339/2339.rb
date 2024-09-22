numeros = gets.chomp.split.map(&:to_i)
c = numeros[0]
p = numeros[1]
f = numeros[2]

if p >= c * f
  puts 'S'
else
  puts 'N'
end
