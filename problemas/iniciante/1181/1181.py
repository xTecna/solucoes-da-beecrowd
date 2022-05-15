L = int(input())
T = input()

soma = 0.0
for i in range(12):
    for _ in range(12):
        numero = float(input())

        if(i == L):
            soma += numero

if(T == 'S'):
    print(f'{soma:.1f}')
else:
    print(f'{soma/12:.1f}')
