using Printf

n = parse(Int, readline())
for i in 1:4:4*n
    @printf "%d %d %d PUM\n" i (i + 1) (i + 2)
end