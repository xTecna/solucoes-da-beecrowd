n = tonumber(io.read(), 10)

for _ = 1, n do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = tonumber(numero, 10)
  end
  print(entrada[1] + entrada[2])
end
