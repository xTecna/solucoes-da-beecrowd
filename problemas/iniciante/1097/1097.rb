k = 0
for i in (1..9).step(2)
    for j in (7+k..5+k).step(-1)
        puts "I=%d J=%d" % [i,j]
    end
    k += 2
end