n = tonumber(io.read())

numeros = {}
for numero in io.read():gmatch("%S+") do
    numeros[#numeros + 1] = tonumber(numero)
end
a = numeros[1]
l = numeros[2]
p = numeros[3]

if a >= n and l >= n and p >= n then
    print("S")
else
    print("N")
end
