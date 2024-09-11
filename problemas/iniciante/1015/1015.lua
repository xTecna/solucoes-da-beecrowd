entrada = {}
for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
end
x1 = tonumber(entrada[1])
y1 = tonumber(entrada[2])

entrada = {}
for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
end
x2 = tonumber(entrada[1])
y2 = tonumber(entrada[2])

print(string.format('%.4f', math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))))
