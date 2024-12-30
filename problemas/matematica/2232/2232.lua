t = tonumber(io.read(), 10)
for i = 1, t do
  n = tonumber(io.read(), 10)
  print(string.format('%d', 2^n - 1))
end
