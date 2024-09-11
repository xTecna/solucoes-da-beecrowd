x = gets.to_i
y = gets.to_i

x, y = y, x if x > y

soma = 0
for i in (x..y)
  soma += i if i % 13 != 0
end

puts soma
