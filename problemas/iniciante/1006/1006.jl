using Printf

a = parse(Float64, readline())
b = parse(Float64, readline())
c = parse(Float64, readline())

@printf "MEDIA = %.1f\n" ((2 * a + 3 * b + 5 * c)/10)
