entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = tonumber(numero, 10)
end
print(math.max(entrada[1], entrada[2]))
