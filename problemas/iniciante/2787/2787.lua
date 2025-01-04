l = tonumber(io.read(), 10)
c = tonumber(io.read(), 10)

if ((l % 2) ~= (c % 2)) then
  print(0)
else
  print(1)
end
