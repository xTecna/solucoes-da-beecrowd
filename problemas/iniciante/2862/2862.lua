c = tonumber(io.read(), 10)
for _ = 1, c do
  n = tonumber(io.read(), 10)
  if n <= 8000 then
    print('Inseto!')
  else
    print('Mais de 8000!')
  end
end
