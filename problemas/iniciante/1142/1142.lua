n = tonumber(io.read(), 10)
for i = 0, (n - 1) do
  m = 4 * i + 1
  print(string.format("%d %d %d PUM", m, m + 1, m + 2))
end
