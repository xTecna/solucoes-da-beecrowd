entrada = gets.chomp.split.map(&:to_i)
a = entrada[0]
b = entrada[1]
c = entrada[2]

if a == b || a == c || b == c || (a + b) == c || (a + c) == b || (b + c) == a
  puts 'S'
else
  puts 'N'
end
