n = tonumber(io.read(), 10)
entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = numero
end
a = tonumber(entrada[1], 10)
b = tonumber(entrada[2], 10)

if (a + b) <= n then
  print("Farei hoje!")
else
  print("Deixa para amanha!")
end
