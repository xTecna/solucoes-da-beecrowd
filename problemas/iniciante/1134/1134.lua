alcool = 0
gasolina = 0
diesel = 0
while true do
  codigo = tonumber(io.read(), 10)

  if codigo == 1 then
    alcool = alcool + 1
  else
    if codigo == 2 then
      gasolina = gasolina + 1
    else
      if codigo == 3 then
        diesel = diesel + 1
      else
        if codigo == 4 then
          break
        end
      end
    end
  end
end

print("MUITO OBRIGADO")
print(string.format("Alcool: %d", alcool))
print(string.format("Gasolina: %d", gasolina))
print(string.format("Diesel: %d", diesel))
