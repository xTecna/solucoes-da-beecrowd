using Printf

x = parse(Int, readline())
@printf "%d\n" (x + 2 - (x % 2))