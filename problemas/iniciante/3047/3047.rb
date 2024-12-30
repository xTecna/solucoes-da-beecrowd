m = gets.to_i
a = gets.to_i
b = gets.to_i

c = m - a - b

puts [a, [b, c].max].max
