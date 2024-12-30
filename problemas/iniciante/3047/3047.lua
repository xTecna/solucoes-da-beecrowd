m = tonumber(io.read(), 10)
a = tonumber(io.read(), 10)
b = tonumber(io.read(), 10)

c = m - a - b

print(math.max(a, math.max(b, c)))
