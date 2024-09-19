t = gets.to_i

for i in (0..999)
  puts format('N[%d] = %d', i, i % t)
end
