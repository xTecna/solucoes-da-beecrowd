using Printf

teste = 1
while true
    n = parse(Int, readline())

    if n == -1
        break
    end

    @printf "Experiment %d: %d full cycle(s)\n" teste div(n, 2)
    global teste += 1
end