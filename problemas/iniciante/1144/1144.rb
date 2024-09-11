n = gets.to_i

for i in (1..n)
  puts format('%d %d %d', i, i * i, i * i * i)
  puts format('%d %d %d', i, (i * i) + 1, (i * i * i) + 1)
end
