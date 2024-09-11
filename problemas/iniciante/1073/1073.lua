n = tonumber(io.read(), 10)

for i = 2, n, 2 do
  print(string.format("%d^2 = %d", i, i * i))
end
