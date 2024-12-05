entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = tonumber(numero, 10)
end
h = entrada[1]
p = entrada[2]

print(string.format("%.2f", h / p))
