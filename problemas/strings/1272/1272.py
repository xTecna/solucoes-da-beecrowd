N = int(input())

for _ in range(N):
    frase = input().strip()

    resposta = ''.join([x[0] for x in frase.split()])

    print(resposta)