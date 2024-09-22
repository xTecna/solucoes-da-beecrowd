entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = numero
end
c = tonumber(entrada[1], 10)
n = tonumber(entrada[2], 10)

print(c % n)
