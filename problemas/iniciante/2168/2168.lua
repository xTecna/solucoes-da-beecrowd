function segura(m, i, j)
  return m[i][j] + m[i + 1][j] + m[i][j + 1] + m[i + 1][j + 1] >= 2
end

n = tonumber(io.read(), 10)

M = {}
for i = 1, n + 1 do
  M[i] = {}
  for numero in io.read():gmatch("%S+") do
    M[i][#M[i] + 1] = tonumber(numero, 10)
  end
end

for i = 1, n do
  for j = 1, n do
    if (segura(M, i, j)) then
      io.write('S')
    else
      io.write('U')
    end
  end
  print('')
end
