function somaPA(a0, an, n)
  return math.floor(((a0 + an) * n) / 2)
end

n = tonumber(io.read(), 10)
for _ = 1, n do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end
  x = tonumber(entrada[1], 10)
  y = tonumber(entrada[2], 10)

  x = x + (1 - (math.abs(x) % 2))

  print(somaPA(x, x + 2 * (y - 1), y))
end
