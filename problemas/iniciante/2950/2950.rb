entrada = gets.chomp.split.map(&:to_i)
n = entrada[0]
x = entrada[1]
y = entrada[2]

puts format('%.2f', n.to_f / (x + y))
