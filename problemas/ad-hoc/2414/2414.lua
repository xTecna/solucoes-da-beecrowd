maior = 0
for numero in io.read():gmatch("%S+") do
    maior = math.max(maior, tonumber(numero))
end

print(maior)
