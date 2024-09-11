while (true) do
  k = tonumber(io.read(), 10)

  if (k == 0) then
    break
  end

  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end
  n = tonumber(entrada[1], 10)
  m = tonumber(entrada[2], 10)

  for _ = 1, k do
    entrada = {}
    for numero in io.read():gmatch("%S+") do
      entrada[#entrada + 1] = numero
    end
    x = tonumber(entrada[1], 10)
    y = tonumber(entrada[2], 10)

    x = x - n
    y = y - m

    if (x > 0 and y > 0) then
      print("NE")
    else
      if (x > 0 and y < 0) then
        print("SE")
      else
        if (x < 0 and y > 0) then
          print("NO")
        else
          if (x < 0 and y < 0) then
            print("SO")
          else
            print("divisa")
          end
        end
      end
    end
  end
end
