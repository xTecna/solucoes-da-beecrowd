using Printf

n = parse(Int32, readline())
for i in 0:9
    @printf "N[%d] = %d\n" i n
    global n *= 2
end