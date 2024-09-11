using Printf

n = parse(Int32, readline())
n = n - (n % 2)

for i in 2:2:(n + 1)
    @printf "%d^2 = %d\n" i (i * i)
end