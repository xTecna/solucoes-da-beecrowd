n = tonumber(io.read(), 10)

vitorias = 0
for i = 1, n do
  x = tonumber(io.read(), 10)
  if x ~= 1 then
    vitorias = vitorias + 1
  end
end

print(vitorias)
