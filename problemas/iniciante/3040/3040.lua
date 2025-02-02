n = tonumber(io.read(), 10)

for _ = 1, n do
  numeros = {}
  for numero in io.read():gmatch("%S+") do
    numeros[#numeros + 1] = tonumber(numero, 10)
  end
  altura = numeros[1]
  espessura = numeros[2]
  galhos = numeros[3]

  if (200 <= altura and altura <= 300 and 50 <= espessura and 150 <= galhos) then
    print("Sim")
  else
    print("Nao")
  end
end
