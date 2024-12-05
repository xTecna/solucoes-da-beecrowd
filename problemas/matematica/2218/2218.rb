def somaPA(a1, an, n)
    return ((a1 + an) * n) / 2
end

t = gets.to_i
for i in (1..t) do
    n = gets.to_i
    puts somaPA(1, n, n) + 1
end