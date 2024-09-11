notas = {}
while #notas < 2 do
  nota = tonumber(io.read())

  if (0.0 <= nota and nota <= 10.0) then
    notas[#notas + 1] = nota
  else
    print("nota invalida")
  end
end

print(string.format("media = %.2f", (notas[1] + notas[2]) / 2.0))
