while true do
  entrada = io.read()
  if entrada == nil then
    break
  end

  numeros = {}
  for numero in entrada:gmatch("%S+") do
    numeros[#numeros + 1] = numero
  end
  v = tonumber(numeros[1], 10)
  t = tonumber(numeros[2], 10)

  print(v * 2 * t)
end
