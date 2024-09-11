f = {}
for i = 1, 14 do
  f[i] = -1
end
f[1] = 1

function fatorial(n)
  if (f[n] == -1) then
    return n * fatorial(n - 1)
  end
  return f[n]
end

n = tonumber(io.read(), 10)
print(fatorial(n))
