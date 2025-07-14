while true do
  entrada = io.read()
  if entrada == nil then
    break
  end

  f = tonumber(entrada)
  lado = f * math.sin(108 * math.pi / 180) / math.sin(63 * math.pi / 180)
  print(string.format("%.10f", lado))
end
