for i = 0, 9 do
  numero = tonumber(io.read(), 10)
  if (numero > 0) then
    print(string.format("X[%d] = %d", i, numero))
  else
    print(string.format("X[%d] = 1", i))
  end
end
