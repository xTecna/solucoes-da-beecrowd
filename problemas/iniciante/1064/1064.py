media = 0.0
contador = 0

for i in range(6):
    numero = float(input())

    if(numero > 0):
        contador += 1
        media += numero

if(contador > 0):
    media /= contador

print(f'{contador} valores positivos')
print(f'{media:.1f}')