while true do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end

  x = tonumber(entrada[1])
  y = tonumber(entrada[2])

  if x == 0 or y == 0 then
    break
  end

  if x > 0 then
    if y > 0 then
      print("primeiro")
    else
      print("quarto")
    end
  else
    if y > 0 then
      print("segundo")
    else
      print("terceiro")
    end
  end
end
