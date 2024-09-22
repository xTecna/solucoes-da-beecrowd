t = tonumber(io.read(), 10)
entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = tonumber(numero, 10)
end

corretos = 0
for i = 1, 5 do
  if entrada[i] == t then
    corretos = corretos + 1
  end
end

print(corretos)
