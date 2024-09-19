x = tonumber(io.read(), 10)
for i = 0, 999 do
  print(string.format("N[%d] = %d", i, i % x))
end
