function quantidadeImpares(x, y)
  return math.floor((y - x) / 2) + 1
end

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

  if (x > y) then
    temp = x
    x = y
    y = temp
  end

  x = x + (math.abs(x) % 2) + 1
  y = y - (math.abs(y) % 2) - 1

  if x > y then
    print(0)
  else
    print(somaPA(x, y, quantidadeImpares(x, y)))
  end
end
