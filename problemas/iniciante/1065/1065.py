pares = 0

for _ in range(5):
    numero = int(input())

    pares += not (numero % 2)

print(f'{pares} valores pares')
