numeros = {}
for numero in io.read():gmatch("%S+") do
  numeros[#numeros + 1] = tonumber(numero, 10)
end
n = numeros[1]
x = numeros[2]
y = numeros[3]

print(string.format("%.2f", n / (x + y)))
