t = io.read()

M = {}
for i = 1, 12 do
  M[i] = {}
  for j = 1, 12 do
    M[i][j] = tonumber(io.read())
  end
end

media = 0.0
quantidade = 0
for i = 8, 12 do
  for j = (14 - i), (i - 1) do
    media = media + M[i][j]
    quantidade = quantidade + 1
  end
end

if t == "M" then
  media = media / quantidade
end

print(string.format("%.1f", media))
