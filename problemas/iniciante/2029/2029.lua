pi = 3.14
while true do
  entrada = io.read()
  if entrada == nil then
    break
  end
  v = tonumber(entrada)
  entrada = io.read()
  if entrada == nil then
    break
  end
  d = tonumber(entrada) / 2.0

  area = pi * d * d
  altura = v / area

  print(string.format("ALTURA = %.2f", altura))
  print(string.format("AREA = %.2f", area))
end
