using Printf

m = parse(Int, readline())
a = parse(Int, readline())
b = parse(Int, readline())

c = m - a - b

@printf "%d\n" max(a, max(b, c))