entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = tonumber(numero, 10)
end
r = entrada[1]
l = entrada[2]

pi = 3.1415
v = (4.0 * pi * r * r * r) / 3.0

print(string.format("%d", math.floor(l / v)))
