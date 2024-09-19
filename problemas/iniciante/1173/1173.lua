x = tonumber(io.read(), 10)
for i = 0, 9 do
  print(string.format("N[%d] = %d", i, x))
  x = x * 2
end
