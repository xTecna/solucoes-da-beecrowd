n = gets.to_i
for i in (1..n)
    x = 4 * (i - 1) + 1
    puts "%d %d %d PUM" % [x,x + 1,x + 2]
end