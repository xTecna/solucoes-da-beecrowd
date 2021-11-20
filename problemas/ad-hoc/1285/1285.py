resposta = [0 for _ in range(5001)]

def repetido(n):
    digitos = str(n)
    digitosDiferentes = set(digitos)

    return len(digitos) != len(digitosDiferentes)

def preCalcula():
    for i in range(1, 5001):
        resposta[i] = resposta[i - 1]
        if(not repetido(i)):
            resposta[i] += 1

def digitosDiferentes(a, b):
    return resposta[b] - resposta[a - 1]

preCalcula()

while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]

        print(digitosDiferentes(N, M))
    except EOFError:
        break
