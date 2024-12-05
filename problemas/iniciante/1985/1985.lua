precos = { 1.5, 2.5, 3.5, 4.5, 5.5 }
n = tonumber(io.read(), 10)
valor = 0.0
for i = 1, n do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = tonumber(numero, 10)
  end
  valor = valor + precos[entrada[1] - 1000] * entrada[2]
end

print(string.format("%.2f", valor))
