N = int(input())

for _ in range(N):
    palavra1 = input()
    palavra2 = input()
    secreta = input()

    pos1 = secreta.index('_')
    pos2 = secreta.index('_', pos1 + 1)

    if palavra1[pos1] == palavra2[pos2] or palavra1[pos2] == palavra2[pos1]:
        print('Y')
    else:
        print('N')