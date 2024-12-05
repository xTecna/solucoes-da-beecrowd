entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = tonumber(numero, 10)
end
for i = 1, 4 do
  if entrada[i] == 1 then
    print(i)
    break
  end
end
