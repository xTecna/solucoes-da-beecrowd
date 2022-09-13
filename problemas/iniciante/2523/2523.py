from re import T


while True:
    try:
        lampadas = input()
        N = int(input())

        letras = [lampadas[int(x) - 1] for x in input().strip().split(' ')]
        print(''.join(letras))
    except EOFError:
        break
