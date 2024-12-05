n = gets.to_i
for i in (1..4*n).step(4)
    puts "%d %d %d PUM" % [i,i + 1,i + 2]
end