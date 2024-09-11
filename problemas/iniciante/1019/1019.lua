segundos = tonumber(io.read(), 10)

horas = math.floor(segundos / 3600)
segundos = segundos % 3600
minutos = math.floor(segundos / 60)
segundos = segundos % 60

print(string.format(horas .. ':' .. minutos .. ':' .. segundos))