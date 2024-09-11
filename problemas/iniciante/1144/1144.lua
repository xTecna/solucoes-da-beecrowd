n = tonumber(io.read(), 10)
for i = 1, n do
  print(string.format("%d %d %d", i, i * i, i * i * i))
  print(string.format("%d %d %d", i, i * i + 1, i * i * i + 1))
end
