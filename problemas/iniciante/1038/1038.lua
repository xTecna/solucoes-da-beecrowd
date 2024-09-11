precos = { 4.00, 4.50, 5.00, 2.00, 1.50 }

entrada = {}
for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
end
codigo = tonumber(entrada[1], 10)
quantidade = tonumber(entrada[2], 10)

print(string.format('Total: R$ %.2f', quantidade * precos[codigo]))
