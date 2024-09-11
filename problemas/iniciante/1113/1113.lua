while true do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end

  x = tonumber(entrada[1])
  y = tonumber(entrada[2])

  if x == y then
    break
  end

  if x < y then
    print("Crescente")
  else
    print("Decrescente")
  end
end
