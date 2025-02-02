while true do
  n = tonumber(io.read(), 10)
  if n == 0 then
    break
  end

  limite = #tostring(math.floor(2 ^ (2 * n - 2)))
  formatado = "%" .. tostring(limite) .. "d"
  for i = 0, (n - 1) do
    linha = tostring(math.floor(2 ^ i))
    io.write(string.format(formatado, math.floor(2 ^ i)))
    for j = 1, (n - 1) do
      io.write(" " .. string.format(formatado, math.floor(2 ^ (i + j))))
    end
    print("")
  end
  print("")
end
