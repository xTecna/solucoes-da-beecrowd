n = tonumber(io.read(), 10)
for i = 1, 10 do
  print(string.format("%d x %d = %d", i, n, i * n))
end
