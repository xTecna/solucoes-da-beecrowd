n = tonumber(io.read(), 10)
entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = tonumber(numero, 10)
end

dois = 0
tres = 0
quatro = 0
cinco = 0
for i = 1, n do
  if entrada[i] % 2 == 0 then
    dois = dois + 1
  end
  if entrada[i] % 3 == 0 then
    tres = tres + 1
  end
  if entrada[i] % 4 == 0 then
    quatro = quatro + 1
  end
  if entrada[i] % 5 == 0 then
    cinco = cinco + 1
  end
end

print(tostring(dois) .. ' Multiplo(s) de 2')
print(tostring(tres) .. ' Multiplo(s) de 3')
print(tostring(quatro) .. ' Multiplo(s) de 4')
print(tostring(cinco) .. ' Multiplo(s) de 5')
