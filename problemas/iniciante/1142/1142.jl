using Printf

n = parse(Int, readline())
for i in 1:n
    x = 1 + 4 * (i - 1)
    @printf "%d %d %d PUM\n" x (x + 1) (x + 2)
end