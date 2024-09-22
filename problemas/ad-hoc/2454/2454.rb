numeros = gets.chomp.split.map(&:to_i)
p = numeros[0]
r = numeros[1]

if p == 1
  if r == 1
    puts 'A'
  else
    puts 'B'
  end
else
  puts 'C'
end
