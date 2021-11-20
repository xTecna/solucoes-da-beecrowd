N = int(input())

for _ in range(N):
    frase = input().strip()

    resposta = ''.join([x[0] if len(x) > 0 else '' for x in frase.split(' ')])

    print(resposta)
