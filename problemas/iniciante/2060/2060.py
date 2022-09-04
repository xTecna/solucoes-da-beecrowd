N = int(input())
numeros = [int(x) for x in input().strip().split(' ')]

for i in range(2, 6):
    print(f'{sum([1 if x % i == 0 else 0 for x in numeros])} Multiplo(s) de {i}')
