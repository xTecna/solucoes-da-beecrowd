n = tonumber(io.read(), 10)
for _ = 1, n do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end
  h = tonumber(entrada[1], 10)
  m = tonumber(entrada[2], 10)
  o = tonumber(entrada[3], 10)

  if (o == 1) then
    print(string.format("%02d:%02d - A porta abriu!", h, m))
  else
    print(string.format("%02d:%02d - A porta fechou!", h, m))
  end
end
