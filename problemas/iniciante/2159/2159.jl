using Printf

n = parse(Int, readline())
@printf "%.1f %.1f\n" (n/log(n)) (1.25506 * n/log(n))