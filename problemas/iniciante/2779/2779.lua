n = tonumber(io.read(), 10)
m = tonumber(io.read(), 10)

figurinhas = {}
for i = 1, m do
  x = tonumber(io.read(), 10)
  figurinhas[x] = true
end

contador = 0
for i = 1, n do
  if figurinhas[i] then
    contador = contador + 1
  end
end

print(n - contador)
