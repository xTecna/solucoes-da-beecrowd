entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = tonumber(numero, 10)
end
ca = entrada[1]
ba = entrada[2]
pa = entrada[3]

entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = tonumber(numero, 10)
end
cr = entrada[1]
br = entrada[2]
pr = entrada[3]

print(math.max(cr - ca, 0) + math.max(br - ba, 0) + math.max(pr - pa, 0))