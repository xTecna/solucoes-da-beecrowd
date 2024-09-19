while (true) do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end
  l = tonumber(entrada[1], 10)
  r = tonumber(entrada[2], 10)

  if (l == 0 and r == 0) then
    break
  end

  print(l + r)
end
