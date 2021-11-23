T = int(input())

for i in range(T):
    idades = [int(x) for x in input().strip().split(' ')]
    idades.pop(0)

    print(f'Case {i + 1}: {idades[len(idades)//2]}')
