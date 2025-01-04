while true do
  entrada = io.read()
  if entrada == nil then
    break
  end

  senha = tonumber(entrada, 10)
  print(senha - 1)
end
