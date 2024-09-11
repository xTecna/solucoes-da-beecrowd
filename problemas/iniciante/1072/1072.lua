n = tonumber(io.read(), 10)

dentro = 0
fora = 0
for i = 1, n do
  numero = tonumber(io.read(), 10)
  if (10 <= numero and numero <= 20) then
    dentro = dentro + 1
  else
    fora = fora + 1
  end
end

print(string.format("%d in", dentro))
print(string.format("%d out", fora))
