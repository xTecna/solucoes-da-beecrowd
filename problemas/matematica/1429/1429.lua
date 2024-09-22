function converteParaDecimal(n)
  resposta = 0
  potencia = 1
  fatoriais = {1, 2, 6, 24, 120}
  
  for i = string.len(n), 1, -1 do
    resposta = resposta + tonumber(n:sub(i, i)) * (fatoriais[potencia]) 
    potencia = potencia + 1
  end

  return resposta
end

while true do
  n = io.read()
  if n == "0" then
    break
  end
  print(converteParaDecimal(n))
end
