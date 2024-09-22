function r(a, b)
  return (9 * a * a) + (b * b)
end

function b(a, b)
  return 2 * (a * a) + (25 * b * b)
end

function c(a, b)
  return -100 * a + (b * b * b)
end

n = tonumber(io.read(), 10)
for i = 1, n do
  entrada = {}
  for numero in io.read():gmatch("%S+") do
    entrada[#entrada + 1] = numero
  end
  x = tonumber(entrada[1], 10)
  y = tonumber(entrada[2], 10)

  rafael = r(x, y)
  beto = b(x, y)
  carlos = c(x, y)

  if rafael > beto and rafael > carlos then
    print('Rafael ganhou')
  else
    if beto > rafael and beto > carlos then
      print('Beto ganhou')
    else
      print('Carlos ganhou')
    end
  end
end
