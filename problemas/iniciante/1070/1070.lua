x = tonumber(io.read(), 10)
x = x + 1 - (x % 2)

for i = 0, 5 do
  print(x + 2 * i)
end