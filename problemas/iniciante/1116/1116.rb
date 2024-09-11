n = gets.to_i

for i in (1..n)
  x, y = gets.chomp.split.map(&:to_i)

  if y == 0
    puts 'divisao impossivel'
  else
    puts format('%.1f', (x.to_f / y))
  end
end
