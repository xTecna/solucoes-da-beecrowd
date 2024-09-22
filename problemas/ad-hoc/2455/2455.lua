entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = numero
end
p1 = tonumber(entrada[1], 10)
c1 = tonumber(entrada[2], 10)
p2 = tonumber(entrada[3], 10)
c2 = tonumber(entrada[4], 10)

diferenca = p2 * c2 - p1 * c1

if (diferenca < 0) then
  print("-1")
else
  if (diferenca > 0) then
    print("1")
  else
    print("0")
  end
end
