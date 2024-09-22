while true do
  entrada = io.read()
  if entrada == nil then
    break
  end

  n = tonumber(entrada, 10)

  biblioteca = {}
  for i = 1, n do
    table.insert(biblioteca, io.read())
  end

  table.sort(biblioteca)

  for i = 1, n do
    print(biblioteca[i])
  end
end
