using Printf

function somaPA(a1, an, n)
    div((n * (a1 + an)), 2)
end

t = parse(Int, readline())

for _ in 1:t
    n = parse(Int, readline())
    @printf "%d\n" (somaPA(1, n, n) + 1)
end