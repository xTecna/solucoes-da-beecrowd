using Printf

l = parse(Int, readline())
c = parse(Int, readline())

@printf "%d\n" (l * c + (l - 1) * (c - 1))
@printf "%d\n" (2 * (l + c - 2))