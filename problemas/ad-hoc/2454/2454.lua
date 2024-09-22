entrada = {}
for numero in io.read():gmatch("%S+") do
  entrada[#entrada + 1] = numero
end
p = tonumber(entrada[1], 10)
r = tonumber(entrada[2], 10)

if (p == 1) then
  if (r == 1) then
    print("A")
  else
    print("B")
  end
else
  print("C")
end
