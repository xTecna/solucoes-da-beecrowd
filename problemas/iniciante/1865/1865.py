N = int(input())
for _ in range(N):
    nome, forca = input().strip().split(' ')

    print('Y' if nome == 'Thor' else 'N')
