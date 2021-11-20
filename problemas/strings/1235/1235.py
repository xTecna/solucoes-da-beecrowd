N = int(input())

for _ in range(N):
    frase = input()

    metade1 = frase[:len(frase)//2]
    metade2 = frase[len(frase)//2:]

    print(metade1[::-1] + metade2[::-1])
