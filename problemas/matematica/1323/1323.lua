f = {}
for i = 1, 101 do
  f[i] = -1
end
f[1] = 1

function feynman(n)
  if (f[n] == -1) then
    return feynman(n - 1) + (n * n)
  end
  return f[n]
end

while true do
  n = tonumber(io.read(), 10)
  if n == 0 then
    break
  end
  print(feynman(n))
end
