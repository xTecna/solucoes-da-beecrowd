N = int(input())

for _ in range(N):
    valor = 0
    L = int(input())

    for i in range(L):
        frase = input()

        for j in range(len(frase)):
            valor += ord(frase[j]) - ord('A') + i + j
    
    print(valor)
