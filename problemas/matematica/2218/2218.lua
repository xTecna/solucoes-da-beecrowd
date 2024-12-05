function somaPA(a1, an, n)
    return math.floor(((a1 + an) * n) / 2)
end

t = tonumber(io.read())

for _ = 1, t do
    n = tonumber(io.read())
    print(somaPA(1, n, n) + 1)
end
