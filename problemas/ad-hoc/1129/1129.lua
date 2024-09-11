while (true) do
  n = tonumber(io.read(), 10)

  if (n == 0) then
    break
  end

  for _ = 1, n do
    entrada = {}
    for numero in io.read():gmatch("%S+") do
      entrada[#entrada + 1] = numero
    end

    opcao = -1
    corretos = 0
    for i = 1, 5 do
      if (tonumber(entrada[i], 10) <= 127) then
        opcao = i
        corretos = corretos + 1
      end
    end

    if (corretos == 1) then
      print(string.char(string.byte('A') + opcao - 1))
    else
      print("*")
    end
  end
end
