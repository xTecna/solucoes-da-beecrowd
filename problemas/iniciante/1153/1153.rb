F = []
for i in (0..13)
    F << -1
end
F[1] = 1

def fatorial(n)
    if F[n] == -1
        F[n] = n * fatorial(n - 1)
    end
    return F[n]
end

n = gets.to_i
puts fatorial(n)