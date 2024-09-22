pessoas = 0
jipes = 0

while true do
  entrada = io.read()
  if entrada == nil then
    break
  end

  palavras = {}
  for palavra in entrada:gmatch("%S+") do
    palavras[#palavras + 1] = palavra
  end

  if palavras[1] == "ABEND" then
    break
  else
    if palavras[1] == "SALIDA" then
      pessoas = pessoas + tonumber(palavras[2], 10)
      jipes = jipes + 1
    else
      pessoas = pessoas - tonumber(palavras[2], 10)
      jipes = jipes - 1
    end
  end
end

print(pessoas)
print(jipes)
