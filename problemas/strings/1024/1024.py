N = int(input())

for _ in range(N):
    M = input()

    novoM = ""
    for letra in M:
        novoM += chr(ord(letra) + 3) if letra.isalpha() else letra
    M = novoM[::-1]
    M = M[:len(M)//2] + ''.join([chr(ord(letra) - 1) for letra in M[len(M)//2:]])

    print(M)
