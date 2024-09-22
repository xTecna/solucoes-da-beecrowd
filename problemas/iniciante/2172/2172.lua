while true do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = tonumber(numero, 10)
  end
  x = entrada[1]
  m = entrada[2]

  if (x == 0 and m == 0) then
    break
  end

  print(x * m)
end