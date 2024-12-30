function mdc(a, b)
  if b == 0 then
    return a
  end
  return mdc(b, a % b)
end

while true do
  linha = io.read()
  if linha == nil then
    break
  end

  numeros = {}
  for palavra in linha:gmatch("%S+") do
    numeros[#numeros + 1] = tonumber(palavra, 10)
  end
  x = numeros[1]
  y = numeros[2]

  print(math.floor((2 * (x + y)) / mdc(x, y)))
end