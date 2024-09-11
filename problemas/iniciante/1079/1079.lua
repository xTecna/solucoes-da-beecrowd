n = tonumber(io.read(), 10)
for _ = 1, n do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end

  x = tonumber(entrada[1])
  y = tonumber(entrada[2])
  z = tonumber(entrada[3])
  media = (2.0 * x + 3.0 * y + 5.0 * z) / 10.0

  print(string.format("%.1f", media))
end
