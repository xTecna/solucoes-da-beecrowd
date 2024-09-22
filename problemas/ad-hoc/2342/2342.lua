n = tonumber(io.read(), 10)

entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = numero
end
p = tonumber(entrada[1], 10)
c = entrada[2]
q = tonumber(entrada[3], 10)

if (c == "+") then
  if (p + q <= n) then
    print('OK')
  else
    print('OVERFLOW')
  end
else
  if (p * q <= n) then
    print('OK')
  else
    print('OVERFLOW')
  end
end
