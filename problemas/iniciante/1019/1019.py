segundos = int(input())

horas = segundos//3600
segundos %= 3600
minutos = segundos//60
segundos %= 60

print(f"{horas}:{minutos}:{segundos}")