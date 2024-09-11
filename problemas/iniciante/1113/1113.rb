x, y = gets.chomp.split.map(&:to_i)

while x != y
  if x < y
    puts 'Crescente'
  else
    puts 'Decrescente'
  end

  x, y = gets.chomp.split.map(&:to_i)
end
