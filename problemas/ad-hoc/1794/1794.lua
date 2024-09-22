n = tonumber(io.read(), 10)
entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = numero
end
la = tonumber(entrada[1], 10)
lb = tonumber(entrada[2], 10)
entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = numero
end
sa = tonumber(entrada[1], 10)
sb = tonumber(entrada[2], 10)

if (la <= n) and (n <= lb) and (sa <= n) and (n <= sb) then
  print('possivel')
else
  print('impossivel')
end
