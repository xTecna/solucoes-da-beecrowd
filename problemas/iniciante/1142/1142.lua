n = tonumber(io.read(), 10)
for i = 1, (4 * n - 1), 4 do
    print(string.format("%d %d %d PUM", i, i + 1, i + 2))
end
