n = tonumber(io.read(), 10)
for _ = 1, n do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end
  d = tonumber(entrada[1], 10)
  i = tonumber(entrada[2], 10)
  b = tonumber(entrada[3], 10)

  precos = {}
  for preco in io.read():gmatch("%S+") do
    precos[#precos + 1] = tonumber(preco, 10)
  end

  resposta = 0
  for _ = 1, b do
    bolo = {}
    for numero in io.read():gmatch("%S+") do
      bolo[#bolo + 1] = tonumber(numero, 10)
    end

    custo = 0
    for k = 2, #bolo, 2 do
      custo = custo + precos[bolo[k] + 1] * bolo[k + 1]
    end
    resposta = math.max(resposta, math.floor(d / custo))
  end

  print(resposta)
end
