O = input()
M = []

soma = 0.0
contador = 0
for i in range(12):
    M.append([])
    for j in range(12):
        M[i].append(float(input()))

        if(j > i):
            soma += M[i][j]
            contador += 1

if(O == 'S'):
    print(f'{soma:.1f}')
else:
    print(f'{soma/contador:.1f}')
