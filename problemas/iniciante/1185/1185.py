O = input().strip()

soma = 0.0
contador = 0
for i in range(12):
    for j in range(12):
        numero = float(input())

        if(i < 11 - j):
            soma += numero
            contador += 1

if(O == 'S'):
    print(f'{soma:.1f}')
else:
    print(f'{soma/contador:.1f}')
