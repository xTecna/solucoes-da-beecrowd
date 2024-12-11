n = tonumber(io.read(), 10)

for _ = 1, n do
  numeros = {}
  for numero in io.read():gmatch("%S+") do
    numeros[#numeros + 1] = tonumber(numero, 10)
  end
  print(math.floor(numeros[1] / numeros[2]) + numeros[1] % numeros[2])
end
