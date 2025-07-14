entrada = gets.chomp.split.map(&:to_i)
r = entrada[0]
l = entrada[1]

pi = 3.1415
v = (4.0 * pi * r * r * r) / 3.0

puts (l / v).floor
