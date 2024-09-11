using Printf

x = parse(Int, readline())
y = parse(Float64, readline())

@printf "%.3f km/l\n" (x/y)