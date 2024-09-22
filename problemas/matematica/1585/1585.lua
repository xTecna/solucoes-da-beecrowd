n = tonumber(io.read(), 10)
for _ = 1, n do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end
  x = tonumber(entrada[1], 10)
  y = tonumber(entrada[2], 10)

  print(string.format('%d cm2', (x * y) // 2))
end
