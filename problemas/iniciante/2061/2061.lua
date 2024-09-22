entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = tonumber(numero, 10)
end

n = entrada[1]
m = entrada[2]

for _ = 1, m do
  acao = io.read()

  if acao == "fechou" then
    n = n + 1
  else
    n = n - 1
  end
end

print(n)
