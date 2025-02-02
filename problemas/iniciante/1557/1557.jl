using Printf

while true
    n = parse(Int, readline())

    if n == 0
        break
    end

    limite = Int(floor(log10(1 << (2 * n - 2))) + 1)
    for i in 1:n
        @printf("%s", lpad(1 << (i - 1), limite))
        for j in 2:n
            @printf(" %s", lpad(1 << (i + j - 2), limite))
        end
        @printf("\n")
    end
    @printf("\n")
end
