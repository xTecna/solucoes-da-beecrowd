using Printf

n = parse(Int32, readline())

for i in 1:10
    @printf "%d x %d = %d\n" i n (i * n)
end