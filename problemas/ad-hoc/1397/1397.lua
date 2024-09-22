while (true) do
  n = tonumber(io.read(), 10)

  if (n == 0) then
    break
  end

  jogador1 = 0
  jogador2 = 0
  for _ = 1, n do
    entrada = {}
    for numero in io.read():gmatch("%S+") do
      entrada[#entrada + 1] = numero
    end
    a = tonumber(entrada[1], 10)
    b = tonumber(entrada[2], 10)

    if (a > b) then
      jogador1 = jogador1 + 1
    else
      if (a < b) then
        jogador2 = jogador2 + 1
      end
    end
  end

  print(string.format("%d %d", jogador1, jogador2))
end
