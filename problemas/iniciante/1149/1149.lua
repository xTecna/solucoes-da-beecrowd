function somaPA(a1, an, n)
  return math.floor(((a1 + an) * n) / 2)
end

entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = tonumber(numero, 10)
end

a = entrada[1]
n = 0
for i = 2, #entrada do
  if entrada[i] > 0 then
    n = entrada[i]
    break
  end
end

print(somaPA(a, a + n - 1, n))
