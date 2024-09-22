x = {}
for numero in io.read():gmatch("%S+") do
  x[#x + 1] = numero
end

y = {}
for numero in io.read():gmatch("%S+") do
  y[#y + 1] = numero
end

compativel = true
for i = 1, 5 do
  if (x[i] == y[i]) then
    compativel = false
    break
  end
end

if compativel then
  print("Y")
else
  print("N")
end
