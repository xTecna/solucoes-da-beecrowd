n = tonumber(io.read(), 10)
for _ = 1, n do
  entrada = {}
  for parte in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = parte
  end

  if entrada[1] == "Thor" then
    print("Y")
  else
    print("N")
  end
end
