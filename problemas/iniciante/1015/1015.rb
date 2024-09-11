entrada = gets.chomp.split
x1 = entrada[0].to_f
y1 = entrada[1].to_f

entrada = gets.chomp.split
x2 = entrada[0].to_f
y2 = entrada[1].to_f

puts "%.4f" % Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))