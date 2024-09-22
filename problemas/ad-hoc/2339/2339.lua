entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = numero
end
c = tonumber(entrada[1], 10)
p = tonumber(entrada[2], 10)
f = tonumber(entrada[3], 10)

if (p >= c * f) then
  print('S')
else
  print('N')
end
