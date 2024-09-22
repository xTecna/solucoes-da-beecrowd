while true do
  entrada = io.read()
  if entrada == nil then
    break
  end

  n = tonumber(entrada, 10)
  for i = 1, n do
    for j = 1, n do
      if (i - 1 == n - 1 - j + 1) then
        io.write(2)
      else
        if (i == j) then
          io.write(1)
        else
          io.write(3)
        end
      end
    end
    print("")
  end
end
