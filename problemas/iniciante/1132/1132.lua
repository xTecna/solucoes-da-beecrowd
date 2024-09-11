x = tonumber(io.read(), 10)
y = tonumber(io.read(), 10)

if (x > y) then
  temp = x
  x = y
  y = temp
end

soma = 0
for i = x, y do
  if i % 13 ~= 0 then
    soma = soma + i
  end
end

print(soma)
