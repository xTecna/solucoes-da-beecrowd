while true do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end

  m = tonumber(entrada[1], 10)
  n = tonumber(entrada[2], 10)

  if m == 0 and n == 0 then
    break
  end

  soma = string.gsub(tostring(m + n), "0", "")
  print(soma)
end
