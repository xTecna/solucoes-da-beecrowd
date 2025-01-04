teste = 1
while true
    n = gets.to_i
    if n == -1
        break
    end

    puts format('Experiment %d: %d full cycle(s)', teste, n / 2)
    teste += 1
end