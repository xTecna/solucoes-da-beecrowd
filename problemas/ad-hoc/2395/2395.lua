entrada = {}
for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = tonumber(numero)
end
a = entrada[1]
b = entrada[2]
c = entrada[3]

entrada = {}
for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = tonumber(numero)
end
x = entrada[1]
y = entrada[2]
z = entrada[3]

print(math.floor(x / a) * math.floor(y / b) * math.floor(z / c))
