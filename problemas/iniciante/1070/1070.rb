x = gets.to_i

x += (1 - x.abs() % 2)
for i in 0..5
    puts (x + (i * 2))
end