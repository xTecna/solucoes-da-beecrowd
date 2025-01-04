entrada = {}
for numero in io.read():gmatch("%S+") do
    table.insert(entrada, tonumber(numero))
end
table.sort(entrada)

print(entrada[2])
