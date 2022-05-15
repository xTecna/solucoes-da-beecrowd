C = int(input())
T = input()

soma = 0.0
for _ in range(12):
    for j in range(12):
        numero = float(input())

        if(j == C):
            soma += numero

if(T == 'S'):
    print(f'{soma:.1f}')
else:
    print(f'{soma/12:.1f}')
