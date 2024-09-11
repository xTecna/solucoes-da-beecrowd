F = [-1 for i in 1:12]
F[1] = 1

function fatorial(n)
    if(F[n] == -1)
        global F[n] = n * fatorial(n - 1);
    end
    return F[n]
end

n = parse(Int32, readline())
println(fatorial(n))