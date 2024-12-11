entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = tonumber(numero, 10)
end
a = entrada[1]
b = entrada[2]
c = entrada[3]

if (a == b or a == c or b == c or (a + b) == c or (a + c) == b or (b + c) == a) then
  print("S")
else
  print("N")
end
